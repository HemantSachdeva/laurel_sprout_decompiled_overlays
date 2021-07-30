.class public Lcom/android/systemui/screenshot/ScreenshotActionChip;
.super Landroid/widget/FrameLayout;
.source "ScreenshotActionChip.java"


# instance fields
.field private mIcon:Landroid/widget/ImageView;

.field private mIconColor:I

.field private mText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/screenshot/ScreenshotActionChip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/screenshot/ScreenshotActionChip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/screenshot/ScreenshotActionChip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 58
    sget p2, Lcom/android/systemui/R$color;->global_screenshot_button_icon:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/screenshot/ScreenshotActionChip;->mIconColor:I

    return-void
.end method

.method static synthetic lambda$setPendingIntent$0(Landroid/app/PendingIntent;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 81
    :try_start_0
    invoke-virtual {p0}, Landroid/app/PendingIntent;->send()V

    .line 82
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "ScreenshotActionChip"

    const-string p2, "Intent cancelled"

    .line 84
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 63
    sget v0, Lcom/android/systemui/R$id;->screenshot_action_chip_icon:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotActionChip;->mIcon:Landroid/widget/ImageView;

    .line 64
    sget v0, Lcom/android/systemui/R$id;->screenshot_action_chip_text:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotActionChip;->mText:Landroid/widget/TextView;

    return-void
.end method

.method setIcon(Landroid/graphics/drawable/Icon;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 69
    iget p2, p0, Lcom/android/systemui/screenshot/ScreenshotActionChip;->mIconColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Icon;->setTint(I)Landroid/graphics/drawable/Icon;

    .line 71
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotActionChip;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    return-void
.end method

.method setPendingIntent(Landroid/app/PendingIntent;Ljava/lang/Runnable;)V
    .locals 1

    .line 79
    new-instance v0, Lcom/android/systemui/screenshot/-$$Lambda$ScreenshotActionChip$ES-yR9a8Hwpm3rCY_qaXPGrIojI;

    invoke-direct {v0, p1, p2}, Lcom/android/systemui/screenshot/-$$Lambda$ScreenshotActionChip$ES-yR9a8Hwpm3rCY_qaXPGrIojI;-><init>(Landroid/app/PendingIntent;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method setText(Ljava/lang/CharSequence;)V
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotActionChip;->mText:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
