.class public Lcom/android/car/ui/toolbar/TabLayout$Tab;
.super Ljava/lang/Object;
.source "TabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/ui/toolbar/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Tab"
.end annotation


# instance fields
.field private final mIcon:Landroid/graphics/drawable/Drawable;

.field private mIsSelected:Z

.field private final mText:Ljava/lang/CharSequence;


# direct methods
.method static synthetic access$600(Lcom/android/car/ui/toolbar/TabLayout$Tab;)Z
    .locals 0

    .line 283
    iget-boolean p0, p0, Lcom/android/car/ui/toolbar/TabLayout$Tab;->mIsSelected:Z

    return p0
.end method

.method static synthetic access$602(Lcom/android/car/ui/toolbar/TabLayout$Tab;Z)Z
    .locals 0

    .line 283
    iput-boolean p1, p0, Lcom/android/car/ui/toolbar/TabLayout$Tab;->mIsSelected:Z

    return p1
.end method


# virtual methods
.method protected bindIcon(Landroid/widget/ImageView;)V
    .locals 0

    .line 300
    iget-object p0, p0, Lcom/android/car/ui/toolbar/TabLayout$Tab;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected bindText(Landroid/widget/TextView;)V
    .locals 0

    .line 295
    iget-object p0, p0, Lcom/android/car/ui/toolbar/TabLayout$Tab;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
