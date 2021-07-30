.class final Lcao;
.super Lcrq;
.source "PG"

# interfaces
.implements Lbvt;
.implements Lcan;


# instance fields
.field private final a:Lcau;


# direct methods
.method public constructor <init>(Lcau;)V
    .locals 0

    invoke-direct {p0}, Lcrq;-><init>()V

    iput-object p1, p0, Lcao;->a:Lcau;

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 1

    iget-object v0, p0, Lcao;->a:Lcau;

    .line 1
    invoke-interface {v0}, Lcau;->a()V

    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method
