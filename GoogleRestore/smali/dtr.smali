.class public final Ldtr;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcrm;


# static fields
.field public static final a:Ldtr;


# instance fields
.field private final b:Lcrm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ldtr;

    .line 1
    invoke-direct {v0}, Ldtr;-><init>()V

    sput-object v0, Ldtr;->a:Ldtr;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 2
    new-instance v0, Ldtu;

    invoke-direct {v0}, Ldtu;-><init>()V

    invoke-static {v0}, Lcrq;->a(Ljava/lang/Object;)Lcrm;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {v0}, Lcrq;->a(Lcrm;)Lcrm;

    move-result-object v0

    iput-object v0, p0, Ldtr;->b:Lcrm;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ldtr;->b()Ldts;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ldts;
    .locals 1

    iget-object v0, p0, Ldtr;->b:Lcrm;

    .line 4
    invoke-interface {v0}, Lcrm;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldts;

    return-object v0
.end method
