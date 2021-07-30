.class Lcom/android/systemui/screenshot/GlobalScreenshot$5;
.super Lcom/android/systemui/screenshot/GlobalScreenshot$ActionsReadyListener;
.source "GlobalScreenshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/GlobalScreenshot;->saveScreenshotInWorkerThread(Ljava/util/function/Consumer;Lcom/android/systemui/screenshot/GlobalScreenshot$ActionsReadyListener;)V
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

    .line 503
    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$5;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-direct {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$ActionsReadyListener;-><init>()V

    return-void
.end method


# virtual methods
.method onActionsReady(Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;)V
    .locals 0

    .line 506
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$5;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {p0, p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$200(Lcom/android/systemui/screenshot/GlobalScreenshot;Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;)V

    return-void
.end method
