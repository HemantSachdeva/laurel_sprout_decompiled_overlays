.class public final Lgx;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgx;->a:Ljava/lang/Object;

    return-void
.end method

.method public static a(I)Lgx;
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    new-instance v0, Lgx;

    .line 2
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object p0

    invoke-direct {v0, p0}, Lgx;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
