.class final Lcyv;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcyx;


# direct methods
.method public constructor <init>(Lcyx;)V
    .locals 0

    iput-object p1, p0, Lcyv;->a:Lcyx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcyv;->a:Lcyx;

    .line 1
    invoke-virtual {v0}, Lcyx;->h()V

    return-void
.end method
