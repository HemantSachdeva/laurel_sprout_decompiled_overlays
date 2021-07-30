.class Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/screenshot/GlobalScreenshot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedImageData"
.end annotation


# instance fields
.field public deleteAction:Landroid/app/Notification$Action;

.field public editAction:Landroid/app/Notification$Action;

.field public shareAction:Landroid/app/Notification$Action;

.field public smartActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/Notification$Action;",
            ">;"
        }
    .end annotation
.end field

.field public uri:Landroid/net/Uri;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 143
    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;->uri:Landroid/net/Uri;

    .line 144
    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;->shareAction:Landroid/app/Notification$Action;

    .line 145
    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;->editAction:Landroid/app/Notification$Action;

    .line 147
    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;->smartActions:Ljava/util/List;

    return-void
.end method
