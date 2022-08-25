!
! Course: CSCI 450, Section 1
! Student Name: Jackson Baker
! Student ID: 10772799
! Homework #1
! Due Date: 8/26/22
!
! In keeping with the Honor Code of UM, I have neither given nor received assistance
! from anyone other than the TA or the instructor.
!
! Program Description: Given a user input integer of n, and n amount of integers that the user also inputs,
! determine the mean and standard deviations of the given numbers.
!

! Start of program for input and calculation
program statisticsComputations
    implicit none
    ! Instantiate variables as well as array for integers
    integer :: numOfInts, integerInput, sumOfInts, squaredSum, count
    real :: mean, standardDeviation, convertedSumOfInts, convertedSquaredSum, convertedNumOfInts

    ! Get user input on number of integers
    print *, "How many integers do you have?"
    read(*,*) numOfInts
    write(*,*) numOfInts

    ! Add each integer inputted to sum of ints for calculations (sum of ints)
    count = 1
    integerInput = 0
    sumOfInts = 0
    squaredSum = 0
    do while(count <= numOfInts)
        print *, "Enter an integer: "
        read(*,*) integerInput
        ! Sum of ints
        sumOfInts = sumOfInts + integerInput
        ! This is for the sum of each squared integer for the standard deviation later (square sum)
        squaredSum = squaredSum + (integerInput ** 2)
        count = count + 1
    end do

    ! Calculate mean - take sumOfInts (sum of all integer inputs) and divide that by numOfInts (number of integers inputted)
    mean = real(sumOfInts) / real(numOfInts)

    ! Calculate standard deviation - take square root of squareSum - (sumOfInts**2)/2 all over numOfInts - 1
    convertedNumOfInts = real(numOfInts)
    convertedSquaredSum = real(squaredSum)
    convertedSumOfInts = real(sumOfInts)

    standardDeviation = sqrt((convertedSquaredSum - ((convertedSumOfInts**2)/convertedNumOfInts))/(convertedNumOfInts - 1))

    ! Print out calculated numbers
    print *, "The mean of your integers is ", mean
    print *, "The standard deviation of your integers is ", standardDeviation

end program statisticsComputations



