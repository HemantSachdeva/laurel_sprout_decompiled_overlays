.class public final Lael;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lbpd;


# instance fields
.field private final a:Lahk;

.field private final b:I

.field private final c:Lacy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lahk;I)V
    .locals 3

    .line 1
    invoke-static {p1}, Lacy;->a(Landroid/content/Context;)Lacy;

    move-result-object p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreService;->a:Lacw;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Restore device and SIM contacts succeeded."

    invoke-virtual {v0, v2, v1}, Laqd;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p2, p0, Lael;->a:Lahk;

    iput p3, p0, Lael;->b:I

    iput-object p1, p0, Lael;->c:Lacy;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/lang/Void;

    iget-object p1, p0, Lael;->c:Lacy;

    sget-object v0, Laxl;->c:Laxl;

    iget v1, p0, Lael;->b:I

    invoke-virtual {p1, v0, v1}, Lacy;->a(Laxl;I)V

    iget-object p1, p0, Lael;->a:Lahk;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreService;->a(Lahk;Z)V

    return-void
.end method
