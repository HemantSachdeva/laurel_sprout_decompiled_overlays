.class public final Lbxh;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldst;


# instance fields
.field private final a:Leip;

.field private final b:Leip;


# direct methods
.method public constructor <init>(Leip;Leip;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbxh;->a:Leip;

    iput-object p2, p0, Lbxh;->b:Leip;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lbxh;->a:Leip;

    invoke-interface {v0}, Leip;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbtr;

    iget-object v1, p0, Lbxh;->b:Leip;

    check-cast v1, Lbrk;

    invoke-virtual {v1}, Lbrk;->b()Lbxd;

    iget-boolean v0, v0, Lbtr;->b:Z

    sget-object v0, Lcqb;->a:Lcqb;

    return-object v0
.end method
