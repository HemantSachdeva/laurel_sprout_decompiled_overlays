.class Lcom/android/systemui/ScreenDecorations$2;
.super Ljava/lang/Object;
.source "ScreenDecorations.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/ScreenDecorations;->startOnScreenDecorationsThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/ScreenDecorations;


# direct methods
.method constructor <init>(Lcom/android/systemui/ScreenDecorations;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/android/systemui/ScreenDecorations$2;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 9

    .line 240
    iget-object p1, p0, Lcom/android/systemui/ScreenDecorations$2;->this$0:Lcom/android/systemui/ScreenDecorations;

    iget-object p1, p1, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    .line 241
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$2;->this$0:Lcom/android/systemui/ScreenDecorations;

    iget-object v1, v0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/android/systemui/ScreenDecorations;->access$100(Lcom/android/systemui/ScreenDecorations;)I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 249
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$2;->this$0:Lcom/android/systemui/ScreenDecorations;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/ScreenDecorations;->access$202(Lcom/android/systemui/ScreenDecorations;Z)Z

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    const/4 v0, 0x4

    if-ge v6, v0, :cond_1

    .line 256
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$2;->this$0:Lcom/android/systemui/ScreenDecorations;

    iget-object v0, v0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    aget-object v1, v0, v6

    if-eqz v1, :cond_0

    .line 257
    aget-object v0, v0, v6

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v7

    new-instance v8, Lcom/android/systemui/ScreenDecorations$RestartingPreDrawListener;

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations$2;->this$0:Lcom/android/systemui/ScreenDecorations;

    iget-object v0, v1, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    aget-object v2, v0, v6

    const/4 v5, 0x0

    move-object v0, v8

    move v3, v6

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/ScreenDecorations$RestartingPreDrawListener;-><init>(Lcom/android/systemui/ScreenDecorations;Landroid/view/View;IILcom/android/systemui/ScreenDecorations$1;)V

    invoke-virtual {v7, v8}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 262
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations$2;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-static {p0}, Lcom/android/systemui/ScreenDecorations;->access$400(Lcom/android/systemui/ScreenDecorations;)V

    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
