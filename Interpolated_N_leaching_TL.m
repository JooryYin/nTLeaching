%% interpolated and cumulative nitrate leaching
% model simulated daily drainage x interpolated daily nitrate concentration (daily leaching)
%time linear
%June 11 /2024 by Joory
%date
num_points = 24; 
start_date = datetime('2023-02-21');
end_date = datetime('2024-04-30');
sampling_dates = datetime(['2023-02-21'; '2023-03-06'; '2023-03-20'; '2023-04-03'; '2023-04-17'; '2023-08-14';'2023-10-10';'2023-10-24';'2023-11-21';'2023-12-05';'2023-12-12';'2024-01-23';'2024-02-06';'2024-02-20';'2024-03-05';'2024-03-19';'2024-04-03';'2024-04-16']);%my data for example
num_days = days(end_date - start_date) + 1;
all_dates = start_date:end_date;
%% import data 
concentration_data = [];%Nitrate concentration x dates (points concentration by sampling dates matrix)
drainage_data = [];% every day's drainage data (1 dimension, unit=mm)
%% interpolation (concentration unit mg/L) 
% remove NaN and 0
% uses the interpolation algorithm specified by METHOD to perform extrapolation 
% for elements of all_dates outside the interval spanned by X.
interpolated_concentration = zeros(num_points, num_days);% creat a num_points-by-num_days matrix
for i = 1:num_points
    interpolated_concentration(i, :) = interp1(sampling_dates(~isnan(concentration_data(i,:))), concentration_data(i,~isnan(concentration_data(i,:))), all_dates,'linear','extrap');
end 
%daily leaching per point per day (kg/ha)
daily_nitrate_leaching = interpolated_concentration .* drainage_data'/100;%(unit)
%cumulative leaching per point
cumulative_nitrate_leaching = cumsum(daily_nitrate_leaching, 2);
