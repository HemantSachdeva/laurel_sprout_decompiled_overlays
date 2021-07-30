.class public final synthetic Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$-j-LPtsifwwAXetcpkY7zTdj5sE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

.field public final synthetic f$1:Landroid/graphics/Rect;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/screenshot/GlobalScreenshot;Landroid/graphics/Rect;ZLjava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$-j-LPtsifwwAXetcpkY7zTdj5sE;->f$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    iput-object p2, p0, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$-j-LPtsifwwAXetcpkY7zTdj5sE;->f$1:Landroid/graphics/Rect;

    iput-boolean p3, p0, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$-j-LPtsifwwAXetcpkY7zTdj5sE;->f$2:Z

    iput-object p4, p0, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$-j-LPtsifwwAXetcpkY7zTdj5sE;->f$3:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$-j-LPtsifwwAXetcpkY7zTdj5sE;->f$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    iget-object v1, p0, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$-j-LPtsifwwAXetcpkY7zTdj5sE;->f$1:Landroid/graphics/Rect;

    iget-boolean v2, p0, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$-j-LPtsifwwAXetcpkY7zTdj5sE;->f$2:Z

    iget-object p0, p0, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$-j-LPtsifwwAXetcpkY7zTdj5sE;->f$3:Ljava/util/function/Consumer;

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->lambda$startAnimation$6$GlobalScreenshot(Landroid/graphics/Rect;ZLjava/util/function/Consumer;)V

    return-void
.end method
