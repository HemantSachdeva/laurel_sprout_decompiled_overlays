.class public final Ldtf;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcrm;


# static fields
.field public static final a:Ldtf;


# instance fields
.field private final b:Lcrm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ldtf;

    .line 1
    invoke-direct {v0}, Ldtf;-><init>()V

    sput-object v0, Ldtf;->a:Ldtf;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 2
    new-instance v0, Ldth;

    invoke-direct {v0}, Ldth;-><init>()V

    invoke-static {v0}, Lcrq;->a(Ljava/lang/Object;)Lcrm;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {v0}, Lcrq;->a(Lcrm;)Lcrm;

    move-result-object v0

    iput-object v0, p0, Ldtf;->b:Lcrm;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ldtf;->b()Ldtg;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ldtg;
    .locals 1

    iget-object v0, p0, Ldtf;->b:Lcrm;

    .line 4
    invoke-interface {v0}, Lcrm;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldtg;

    return-object v0
.end method
