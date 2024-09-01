# 🌳 Decision Tree Classification

## Overview

This repository contains solutions to problems focusing on Decision Tree Classification using entropy and Gini Index. The tasks are designed to help understand the role of various variables in decision tree construction.

## Problems & Solutions

### 1. **🔍 Understanding Variable Roles**
- **Task**: Execute each line of the provided code, list down the values of each variable, and understand their roles.
- **Solution**:
  - **`d`**: Loads the dataset from "ClassificationSimpleLab.csv".
  - **`f`**: Creates a frequency table for the target variable `buys_computer`.
  - **`t`**: Constructs a contingency table between `age` and `buys_computer`.
  - **`prop1`, `prop2`, `prop3`**: Calculate the probability distributions for different age groups.
  - **`H1`, `H2`, `H3`**: Compute entropy for each age group.
  - **`xx`, `r`, `e`**: Calculate the weighted entropy, overall entropy, and information gain, respectively.

### 2. **📊 Entropy Calculations**
- **Task**: Compute values of `xx`, `r`, and `e` for each of the other effective input variables in the dataset.
- **Solution**: The generalized entropy function is applied to all input variables to determine their information gain relative to the target variable.

### 3. **📉 Gini Index Calculations**
- **Task**: Using the Gini Index, compute the values of `xx`, `r`, and `e` for each of the effective input variables.
- **Solution**: A Gini index-based function is applied to calculate information gain, similar to the entropy-based method but using Gini Index as the impurity measure.

### 4. **⚙️ Generalized Function for Information Gain**
- **Task**: Write a generalized function `Compute(x, y)` to display values of `xx`, `r`, and `e` for any input variable `x` with respect to the target variable `y` using entropy.
- **Solution**: The `Compute(x, y)` function was created to dynamically calculate the entropy-based information gain for any specified input and target variables.

## Installation & Setup

### Clone the repository:
   ```bash
   git clone https://github.com/yourusername/DataMiningLab.git
   ```
## Usage
- 📥 **Clone the repository**: Download the code and run the provided R scripts in your environment.
- 🖥️ **Execute the functions**: Follow the lab instructions to execute and understand the tasks step by step.
