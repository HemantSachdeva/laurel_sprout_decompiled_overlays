.class public final synthetic Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$6$DV8eaPDbwMlxrm96cZXE9jcXpVY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/screenshot/GlobalScreenshot$6;

.field public final synthetic f$1:Ljava/util/function/Consumer;

.field public final synthetic f$2:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/screenshot/GlobalScreenshot$6;Ljava/util/function/Consumer;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$6$DV8eaPDbwMlxrm96cZXE9jcXpVY;->f$0:Lcom/android/systemui/screenshot/GlobalScreenshot$6;

    iput-object p2, p0, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$6$DV8eaPDbwMlxrm96cZXE9jcXpVY;->f$1:Ljava/util/function/Consumer;

    iput-object p3, p0, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$6$DV8eaPDbwMlxrm96cZXE9jcXpVY;->f$2:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$6$DV8eaPDbwMlxrm96cZXE9jcXpVY;->f$0:Lcom/android/systemui/screenshot/GlobalScreenshot$6;

    iget-object v1, p0, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$6$DV8eaPDbwMlxrm96cZXE9jcXpVY;->f$1:Ljava/util/function/Consumer;

    iget-object p0, p0, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$6$DV8eaPDbwMlxrm96cZXE9jcXpVY;->f$2:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$6;->lambda$onTouch$0$GlobalScreenshot$6(Ljava/util/function/Consumer;Landroid/graphics/Rect;)V

    return-void
.end method
