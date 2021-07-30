.class public final synthetic Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$4lRJxCebWv6lMPOxNapvb200hVc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

.field public final synthetic f$1:Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/screenshot/GlobalScreenshot;Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$4lRJxCebWv6lMPOxNapvb200hVc;->f$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    iput-object p2, p0, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$4lRJxCebWv6lMPOxNapvb200hVc;->f$1:Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$4lRJxCebWv6lMPOxNapvb200hVc;->f$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    iget-object p0, p0, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$4lRJxCebWv6lMPOxNapvb200hVc;->f$1:Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;

    invoke-virtual {v0, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->lambda$showUiOnActionsReady$5$GlobalScreenshot(Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;)V

    return-void
.end method
