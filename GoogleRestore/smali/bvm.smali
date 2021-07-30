.class public final Lbvm;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldst;


# instance fields
.field private final a:Leip;


# direct methods
.method public constructor <init>(Leip;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbvm;->a:Leip;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lbvm;->b()Lbvl;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lbvl;
    .locals 2

    iget-object v0, p0, Lbvm;->a:Leip;

    check-cast v0, Ldsu;

    iget-object v0, v0, Ldsu;->a:Ljava/lang/Object;

    .line 1
    check-cast v0, Landroid/app/Application;

    new-instance v1, Lbvl;

    .line 2
    invoke-direct {v1, v0}, Lbvl;-><init>(Landroid/app/Application;)V

    return-object v1
.end method
