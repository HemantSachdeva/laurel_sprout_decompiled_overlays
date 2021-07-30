.class public final Lbsf;
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

    iput-object p1, p0, Lbsf;->a:Leip;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lbsf;->a:Leip;

    invoke-interface {v0}, Leip;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcqu;

    new-instance v0, Lbse;

    invoke-direct {v0}, Lbse;-><init>()V

    return-object v0
.end method
