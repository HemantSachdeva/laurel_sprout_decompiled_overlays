.class final Lbs;
.super Lbm;
.source "PG"


# instance fields
.field final synthetic a:Lbx;


# direct methods
.method public constructor <init>(Lbx;)V
    .locals 0

    iput-object p1, p0, Lbs;->a:Lbx;

    invoke-direct {p0}, Lbm;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/ClassLoader;Ljava/lang/String;)Lba;
    .locals 0

    iget-object p1, p0, Lbs;->a:Lbx;

    iget-object p1, p1, Lbx;->j:Lbn;

    iget-object p1, p1, Lbn;->c:Landroid/content/Context;

    .line 1
    invoke-static {p1, p2}, Lba;->a(Landroid/content/Context;Ljava/lang/String;)Lba;

    move-result-object p1

    return-object p1
.end method
