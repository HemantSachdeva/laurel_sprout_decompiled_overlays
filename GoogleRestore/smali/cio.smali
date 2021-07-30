.class final Lcio;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcip;


# direct methods
.method public constructor <init>(Lcip;)V
    .locals 0

    iput-object p1, p0, Lcio;->a:Lcip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcio;->a:Lcip;

    iget-object v0, v0, Lcip;->a:Lciw;

    .line 1
    invoke-virtual {v0}, Lciw;->f()V

    return-void
.end method
