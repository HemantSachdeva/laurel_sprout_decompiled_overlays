.class public final Lakl;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lakm;

.field public c:Ljava/util/Map;

.field public d:Laci;

.field public e:Ljava/lang/String;

.field public f:Z

.field public g:Lbjg;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/apps/pixelmigrate/common/ui/AppGroupItemHierarchy;
    .locals 1

    iget-object v0, p0, Lakl;->a:Landroid/content/Context;

    .line 1
    invoke-static {v0}, Lcrj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lakl;->b:Lakm;

    .line 2
    invoke-static {v0}, Lcrj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lakl;->g:Lbjg;

    .line 3
    invoke-static {v0}, Lcrj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lakl;->c:Ljava/util/Map;

    .line 4
    invoke-static {v0}, Lcrj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lakl;->d:Laci;

    .line 5
    invoke-static {v0}, Lcrj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v0, Lcom/google/android/apps/pixelmigrate/common/ui/AppGroupItemHierarchy;

    .line 7
    invoke-direct {v0, p0}, Lcom/google/android/apps/pixelmigrate/common/ui/AppGroupItemHierarchy;-><init>(Lakl;)V

    return-object v0
.end method
