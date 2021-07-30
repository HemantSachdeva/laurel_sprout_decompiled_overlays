.class public Landroidx/constraintlayout/solver/widgets/VirtualLayout;
.super Landroidx/constraintlayout/solver/widgets/HelperWidget;
.source "VirtualLayout.java"


# instance fields
.field private mNeedsCallFromSolver:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Landroidx/constraintlayout/solver/widgets/HelperWidget;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->mNeedsCallFromSolver:Z

    return-void
.end method


# virtual methods
.method public captureWidgets()V
    .locals 3

    const/4 v0, 0x0

    .line 130
    :goto_0
    iget v1, p0, Landroidx/constraintlayout/solver/widgets/HelperWidget;->mWidgetsCount:I

    if-ge v0, v1, :cond_1

    .line 131
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/HelperWidget;->mWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 133
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setInVirtualLayout(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public needSolverPass()Z
    .locals 0

    .line 113
    iget-boolean p0, p0, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->mNeedsCallFromSolver:Z

    return p0
.end method

.method public updateConstraints(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;)V
    .locals 0

    .line 126
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->captureWidgets()V

    return-void
.end method
