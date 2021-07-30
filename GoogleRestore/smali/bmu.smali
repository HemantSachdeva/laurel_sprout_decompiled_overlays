.class final Lbmu;
.super Lbmz;
.source "PG"


# instance fields
.field final synthetic a:Lbpl;


# direct methods
.method public constructor <init>(Lbpl;)V
    .locals 0

    iput-object p1, p0, Lbmu;->a:Lbpl;

    .line 1
    invoke-direct {p0}, Lbmz;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    iget-object v0, p0, Lbmu;->a:Lbpl;

    .line 2
    invoke-static {p1, v0}, Lbuo;->a(Lcom/google/android/gms/common/api/Status;Lbpl;)V

    return-void
.end method
