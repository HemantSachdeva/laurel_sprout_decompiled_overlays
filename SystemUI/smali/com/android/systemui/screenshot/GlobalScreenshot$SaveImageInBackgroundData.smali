.class Lcom/android/systemui/screenshot/GlobalScreenshot$SaveImageInBackgroundData;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/screenshot/GlobalScreenshot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SaveImageInBackgroundData"
.end annotation


# instance fields
.field public errorMsgResId:I

.field public finisher:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field public image:Landroid/graphics/Bitmap;

.field public mActionsReadyListener:Lcom/android/systemui/screenshot/GlobalScreenshot$ActionsReadyListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method clearImage()V
    .locals 1

    const/4 v0, 0x0

    .line 125
    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    return-void
.end method
