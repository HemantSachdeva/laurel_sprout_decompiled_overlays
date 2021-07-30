.class final Ldkc;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field final a:Ldkg;

.field final b:I

.field final c:Ldmz;

.field final d:Z


# direct methods
.method public constructor <init>(Ldkg;ILdmz;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldkc;->a:Ldkg;

    iput p2, p0, Ldkc;->b:I

    iput-object p3, p0, Ldkc;->c:Ldmz;

    iput-boolean p4, p0, Ldkc;->d:Z

    return-void
.end method


# virtual methods
.method public final a()Ldna;
    .locals 1

    iget-object v0, p0, Ldkc;->c:Ldmz;

    iget-object v0, v0, Ldmz;->s:Ldna;

    return-object v0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ldkc;

    iget v0, p0, Ldkc;->b:I

    iget p1, p1, Ldkc;->b:I

    sub-int/2addr v0, p1

    return v0
.end method
