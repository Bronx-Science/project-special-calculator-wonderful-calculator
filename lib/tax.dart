class TaxModel {
  late String state;
  late double income;
  late bool isMarried;

  TaxModel(this.state, this.income, this.isMarried);

  double CalculateTaxes() {
    double stateTaxRate = 0.0;
    double federalTaxRate = 0.0;
    double stateTaxLiability = 0.0;
    double federalTaxLiability = 0.0;

    if (isMarried) {
      if (income <= 20000) {
        federalTaxRate = 0.1;
      }
      if (income > 20000 && income <= 80000) {
        federalTaxRate = 0.12;
      }
      if (income > 80000 && income <= 171000) {
        federalTaxRate = 0.22;
      }
      if (income > 171000 && income <= 326000) {
        federalTaxRate = 0.24;
      }
      if (income > 326000 && income <= 414000) {
        federalTaxRate = 0.32;
      }
    }

    // Tax Rates Acquired from https://taxfoundation.org/data/all/state/2023-sales-tax-rates-midyear/
    switch(state) {
      case 'Minnesota':
        stateTaxRate = 0.06875;
        break;
      
      case 'Wisconsin': case 'North Dakota':
        stateTaxRate = 0.05;
        break;
      
      case 'Iowa': case 'Kentucky': case 'Maryland': case 'Michigan': case 'Vermont': case 'West Virginia': case 'Florida': case 'Pennsylvania': case 'Idaho': case 'South Carolina':
        stateTaxRate = 0.06;
        break;

      case 'South Dakota':
        stateTaxRate = 0.042;
        break;
      
      case 'Colorado':
        stateTaxRate = 0.029;
        break;

      case 'Hawaii': case 'Wyoming': case 'New York':  case 'Georgia': case 'Alabama':
        stateTaxRate = 0.04;
        break;

      case 'Missouri':
        stateTaxRate = 0.0423;
        break;

      case 'Louisiana':
        stateTaxRate = 0.0445;
        break;

      case 'Oklahoma':
        stateTaxRate = 0.045;
        break;

      case 'North Carolina':
        stateTaxRate = 0.475;
        break;

      case 'New Mexico':
        stateTaxRate = 0.488;
        break;

      case 'Virginia':
        stateTaxRate = 0.053;
        break;

      case 'Maine': case 'Nebraska':
        stateTaxRate = 0.055;
        break;

      case 'Arizona':
        stateTaxRate = 0.056;
        break;

      case 'Ohio':
        stateTaxRate = 0.0575;
        break;

      case 'Utah':
        stateTaxRate = 0.061;
        break;

      case 'Massachusetts': case 'Texas':  case 'Illinois':
        stateTaxRate = 0.0625;
        break;

      case 'Connecticut':
        stateTaxRate = 0.0635;
        break;

      case 'Washington': case 'Kansas': case 'Arkansas':
        stateTaxRate = 0.065;
        break;

      case 'New Jersey':
        stateTaxRate = 0.0663;
        break;

      case 'Indiana': case 'Rhode Island': case 'Mississippi': case 'Tennessee':
        stateTaxRate = 0.07;
        break;

      case 'California':
        stateTaxRate = 0.0725;
        break;

      default:
        stateTaxRate = 0;
        break;
    }
    federalTaxLiability = income * federalTaxRate;
    stateTaxLiability = income * stateTaxRate;
    print(stateTaxLiability);
    print(federalTaxLiability);
    return federalTaxLiability + stateTaxLiability;
  }
}