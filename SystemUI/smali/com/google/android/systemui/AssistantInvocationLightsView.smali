.class public Lcom/google/android/systemui/AssistantInvocationLightsView;
.super Lcom/android/systemui/assist/ui/InvocationLightsView;
.source "AssistantInvocationLightsView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, v0}, Lcom/google/android/systemui/AssistantInvocationLightsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/systemui/AssistantInvocationLightsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/systemui/AssistantInvocationLightsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/assist/ui/InvocationLightsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 66
    sget p1, Lcom/android/systemui/R$color;->edge_light_red:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    .line 67
    sget p1, Lcom/android/systemui/R$color;->edge_light_yellow:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    .line 68
    sget p1, Lcom/android/systemui/R$color;->edge_light_blue:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    .line 69
    sget p1, Lcom/android/systemui/R$color;->edge_light_green:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    return-void
.end method


# virtual methods
.method protected createCornerPathRenderer(Landroid/content/Context;)Lcom/android/systemui/assist/ui/CornerPathRenderer;
    .locals 0

    .line 111
    invoke-super {p0, p1}, Lcom/android/systemui/assist/ui/InvocationLightsView;->createCornerPathRenderer(Landroid/content/Context;)Lcom/android/systemui/assist/ui/CornerPathRenderer;

    move-result-object p0

    return-object p0
.end method

.method public onInvocationProgress(F)V
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_0

    .line 83
    invoke-super {p0, p1}, Lcom/android/systemui/assist/ui/InvocationLightsView;->onInvocationProgress(F)V

    goto :goto_0

    .line 85
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mGuide:Lcom/android/systemui/assist/ui/PerimeterPathGuide;

    sget-object v2, Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;->BOTTOM_LEFT:Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;

    .line 86
    invoke-virtual {v1, v2}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->getRegionWidth(Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;)F

    move-result v1

    const v2, 0x3f19999a    # 0.6f

    mul-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 90
    iget-object v3, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mGuide:Lcom/android/systemui/assist/ui/PerimeterPathGuide;

    sget-object v4, Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;->BOTTOM:Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;

    invoke-virtual {v3, v4}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->getRegionWidth(Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;)F

    move-result v3

    const/high16 v4, 0x40800000    # 4.0f

    div-float/2addr v3, v4

    sub-float/2addr p1, v0

    sub-float/2addr v0, p1

    .line 98
    invoke-static {v1, v3, v0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p1

    sub-float v0, v3, p1

    const/4 v1, 0x0

    .line 100
    invoke-virtual {p0, v1, v0, p1}, Lcom/android/systemui/assist/ui/InvocationLightsView;->setLight(IFF)V

    const/4 v0, 0x1

    .line 101
    invoke-virtual {p0, v0, v3, v3}, Lcom/android/systemui/assist/ui/InvocationLightsView;->setLight(IFF)V

    const/4 v0, 0x2

    mul-float/2addr v2, v3

    .line 102
    invoke-virtual {p0, v0, v2, v3}, Lcom/android/systemui/assist/ui/InvocationLightsView;->setLight(IFF)V

    const/4 v0, 0x3

    const/high16 v2, 0x40400000    # 3.0f

    mul-float/2addr v3, v2

    .line 103
    invoke-virtual {p0, v0, v3, p1}, Lcom/android/systemui/assist/ui/InvocationLightsView;->setLight(IFF)V

    .line 104
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 106
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
