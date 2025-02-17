# nTLeaching
 Nitrate Leaching Calculation using Time Linear Method

This MATLAB script interpolates and calculates cumulative nitrate leaching based on daily drainage and sampled nitrate concentration data.

## Table of Contents

- [Introduction](#introduction)
- [Prerequisites](#prerequisites)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)

## Introduction

The script performs the following tasks:
1. Interpolates nitrate concentration data for each sampling point.
2. Calculates daily nitrate leaching per point per day.
3. Computes cumulative nitrate leaching per point.

## Prerequisites

Before running the script, ensure you have the following:
- MATLAB installed on your system.
- Actual data for `concentration_data` and `drainage_data`.

## Usage

1. Clone the repository or download the script file `nitrate_leaching.m`.
2. Open the script in MATLAB.
3. Replace the placeholder comments for `concentration_data` and `drainage_data` with your actual data.
4. Run the script in MATLAB.

### Example

1. Define the start and end dates:
    ```matlab
    start_date = datetime('2023-02-21');
    end_date = datetime('2024-04-30');
    ```

2. Define the sampling dates:
    ```matlab
    sampling_dates = datetime(['2023-02-21'; '2023-03-06'; '2023-03-20'; '2023-04-03'; '2023-04-17'; '2023-08-14'; '2023-10-10'; '2023-10-24'; '2023-11-21'; '2023-12-05'; '2023-12-12'; '2024-01-23'; '2024-02-06'; '2024-02-20'; '2024-03-05'; '2024-03-19'; '2024-04-03'; '2024-04-16']);
    ```

3. Import data:
    ```matlab
    concentration_data = [
        % Add your concentration data here
    ];
    drainage_data = [
        % Add your drainage data here
    ];
    ```

4. Run the script to interpolate and calculate nitrate leaching.

## Contributing

Contributions are welcome! Please fork the repository and create a pull request with your changes. For major changes, please open an issue first to discuss what you would like to change.

## License

This project is licensed under the MIT License.
