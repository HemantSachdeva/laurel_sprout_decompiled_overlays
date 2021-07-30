.class Lcom/android/systemui/biometrics/AuthBiometricView$Injector;
.super Ljava/lang/Object;
.source "AuthBiometricView.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/biometrics/AuthBiometricView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# instance fields
.field mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricView;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDelayAfterError()I
    .locals 0

    const/16 p0, 0x7d0

    return p0
.end method

.method public getDescriptionView()Landroid/widget/TextView;
    .locals 1

    .line 135
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView$Injector;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricView;

    sget v0, Lcom/android/systemui/R$id;->description:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method

.method public getIconView()Landroid/widget/ImageView;
    .locals 1

    .line 143
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView$Injector;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricView;

    sget v0, Lcom/android/systemui/R$id;->biometric_icon:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    return-object p0
.end method

.method public getIndicatorView()Landroid/widget/TextView;
    .locals 1

    .line 139
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView$Injector;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricView;

    sget v0, Lcom/android/systemui/R$id;->indicator:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method

.method public getMediumToLargeAnimationDurationMs()I
    .locals 0

    const/16 p0, 0x1c2

    return p0
.end method

.method public getNegativeButton()Landroid/widget/Button;
    .locals 1

    .line 115
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView$Injector;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricView;

    sget v0, Lcom/android/systemui/R$id;->button_negative:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/Button;

    return-object p0
.end method

.method public getPositiveButton()Landroid/widget/Button;
    .locals 1

    .line 119
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView$Injector;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricView;

    sget v0, Lcom/android/systemui/R$id;->button_positive:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/Button;

    return-object p0
.end method

.method public getSubtitleView()Landroid/widget/TextView;
    .locals 1

    .line 131
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView$Injector;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricView;

    sget v0, Lcom/android/systemui/R$id;->subtitle:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method

.method public getTitleView()Landroid/widget/TextView;
    .locals 1

    .line 127
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView$Injector;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricView;

    sget v0, Lcom/android/systemui/R$id;->title:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method

.method public getTryAgainButton()Landroid/widget/Button;
    .locals 1

    .line 123
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView$Injector;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricView;

    sget v0, Lcom/android/systemui/R$id;->button_try_again:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/Button;

    return-object p0
.end method
