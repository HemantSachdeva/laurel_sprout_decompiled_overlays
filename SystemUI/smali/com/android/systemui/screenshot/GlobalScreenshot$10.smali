.class Lcom/android/systemui/screenshot/GlobalScreenshot$10;
.super Lcom/android/systemui/screenshot/GlobalScreenshot$ActionsReadyListener;
.source "GlobalScreenshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/GlobalScreenshot;->lambda$startAnimation$6(Landroid/graphics/Rect;ZLjava/util/function/Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V
    .locals 0

    .line 807
    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$10;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-direct {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$ActionsReadyListener;-><init>()V

    return-void
.end method


# virtual methods
.method onActionsReady(Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;)V
    .locals 0

    .line 810
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$10;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {p0, p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$1400(Lcom/android/systemui/screenshot/GlobalScreenshot;Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;)V

    return-void
.end method
