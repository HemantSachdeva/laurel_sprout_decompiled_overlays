.class public final Lefi;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ldyv;

.field final synthetic b:Ldyc;


# direct methods
.method public constructor <init>(Ldyc;Ldyv;)V
    .locals 0

    iput-object p1, p0, Lefi;->b:Ldyc;

    iput-object p2, p0, Lefi;->a:Ldyv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lefi;->b:Ldyc;

    iget-object v1, p0, Lefi;->a:Ldyv;

    .line 1
    invoke-virtual {v0, v1}, Ldyc;->b(Ldyv;)V

    return-void
.end method
