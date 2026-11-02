// Change this value to test different marks
let marks = 85; 
let classification;

// We switch true so we can evaluate conditional ranges inside the cases
switch (true) {
    case (marks >= 80 && marks <= 100):
        classification = "Topper";
        break;
    case (marks >= 40 && marks < 80):
        classification = "Average";
        break;
    case (marks >= 0 && marks < 40):
        classification = "Fail";
        break;
    default:
        classification = "Invalid Marks";
}

console.log(`Student Status: ${classification}`);
