.class final Lcfj;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Comparable;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final a:Ljava/util/Calendar;

.field public final b:Ljava/lang/String;

.field final c:I

.field final d:I

.field final e:I

.field final f:I

.field final g:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcfi;

    invoke-direct {v0}, Lcfi;-><init>()V

    sput-object v0, Lcfj;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/util/Calendar;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    const/4 v0, 0x5

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 2
    invoke-static {p1}, Lcft;->b(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcfj;->a:Ljava/util/Calendar;

    .line 3
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lcfj;->c:I

    .line 4
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcfj;->d:I

    .line 5
    const/4 v1, 0x7

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v1

    iput v1, p0, Lcfj;->e:I

    .line 6
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v0

    iput v0, p0, Lcfj;->f:I

    .line 7
    invoke-static {}, Lcft;->c()Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcfj;->b:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcfj;->g:J

    return-void
.end method

.method static a()Lcfj;
    .locals 2

    new-instance v0, Lcfj;

    .line 17
    invoke-static {}, Lcft;->a()Ljava/util/Calendar;

    move-result-object v1

    invoke-direct {v0, v1}, Lcfj;-><init>(Ljava/util/Calendar;)V

    return-object v0
.end method

.method static a(II)Lcfj;
    .locals 2

    .line 10
    invoke-static {}, Lcft;->b()Ljava/util/Calendar;

    move-result-object v0

    .line 11
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    .line 12
    const/4 p0, 0x2

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    new-instance p0, Lcfj;

    .line 13
    invoke-direct {p0, v0}, Lcfj;-><init>(Ljava/util/Calendar;)V

    return-object p0
.end method

.method static a(J)Lcfj;
    .locals 1

    .line 14
    invoke-static {}, Lcft;->b()Ljava/util/Calendar;

    move-result-object v0

    .line 15
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    new-instance p0, Lcfj;

    .line 16
    invoke-direct {p0, v0}, Lcfj;-><init>(Ljava/util/Calendar;)V

    return-object p0
.end method


# virtual methods
.method public final a(Lcfj;)I
    .locals 1

    iget-object v0, p0, Lcfj;->a:Ljava/util/Calendar;

    .line 9
    iget-object p1, p1, Lcfj;->a:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result p1

    return p1
.end method

.method final a(I)J
    .locals 2

    iget-object v0, p0, Lcfj;->a:Ljava/util/Calendar;

    .line 22
    invoke-static {v0}, Lcft;->b(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    .line 23
    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 24
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method final b()I
    .locals 2

    iget-object v0, p0, Lcfj;->a:Ljava/util/Calendar;

    .line 18
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcfj;->a:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v1

    sub-int/2addr v0, v1

    if-gez v0, :cond_0

    iget v1, p0, Lcfj;->e:I

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method final b(Lcfj;)I
    .locals 2

    iget-object v0, p0, Lcfj;->a:Ljava/util/Calendar;

    .line 30
    instance-of v0, v0, Ljava/util/GregorianCalendar;

    if-eqz v0, :cond_0

    .line 31
    iget v0, p1, Lcfj;->d:I

    iget v1, p0, Lcfj;->d:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0xc

    iget p1, p1, Lcfj;->c:I

    iget v1, p0, Lcfj;->c:I

    sub-int/2addr p1, v1

    add-int/2addr v0, p1

    return v0

    .line 30
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 32
    const-string v0, "Only Gregorian calendars are supported."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final b(I)Lcfj;
    .locals 2

    iget-object v0, p0, Lcfj;->a:Ljava/util/Calendar;

    .line 27
    invoke-static {v0}, Lcft;->b(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    .line 28
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->add(II)V

    new-instance p1, Lcfj;

    .line 29
    invoke-direct {p1, v0}, Lcfj;-><init>(Ljava/util/Calendar;)V

    return-object p1
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcfj;

    invoke-virtual {p0, p1}, Lcfj;->a(Lcfj;)I

    move-result p1

    return p1
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 19
    :cond_0
    instance-of v1, p1, Lcfj;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 20
    :cond_1
    check-cast p1, Lcfj;

    iget v1, p0, Lcfj;->c:I

    .line 21
    iget v3, p1, Lcfj;->c:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcfj;->d:I

    iget p1, p1, Lcfj;->d:I

    if-ne v1, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcfj;->c:I

    .line 25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcfj;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 26
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcfj;->d:I

    .line 33
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcfj;->c:I

    .line 34
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
