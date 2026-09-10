.class public Lcom/vkontakte/android/UserProfile;
.super Ljava/lang/Object;
.source "UserProfile.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;
.implements Lcom/vkontakte/android/Indexable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vkontakte/android/UserProfile;",
            ">;"
        }
    .end annotation
.end field

.field public static final OFFLINE:I = 0x0

.field public static final ONLINE_MOBILE_APP:I = 0x3

.field public static final ONLINE_MOBILE_SITE:I = 0x2

.field public static final ONLINE_SITE:I = 0x1


# instance fields
.field public bdate:Ljava/lang/String;

.field public city:I

.field public country:I

.field public f:Z

.field public firstName:Ljava/lang/String;

.field public fullName:Ljava/lang/String;

.field public isFriend:Z

.field public lastName:Ljava/lang/String;

.field public online:I

.field public photo:Ljava/lang/String;

.field public uid:I

.field public university:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lcom/vkontakte/android/UserProfile$1;

    invoke-direct {v0}, Lcom/vkontakte/android/UserProfile$1;-><init>()V

    .line 43
    sput-object v0, Lcom/vkontakte/android/UserProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 52
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, "DELETED"

    iput-object v0, p0, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    .line 19
    const-string v0, "DELETED"

    iput-object v0, p0, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 20
    const-string v0, "DELETED"

    iput-object v0, p0, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    .line 21
    const-string v0, "http://vkontakte.ru/images/question_c.gif"

    iput-object v0, p0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkontakte/android/UserProfile;->online:I

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/vkontakte/android/UserProfile;->university:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/UserProfile;->bdate:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, "DELETED"

    iput-object v0, p0, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    .line 19
    const-string v0, "DELETED"

    iput-object v0, p0, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 20
    const-string v0, "DELETED"

    iput-object v0, p0, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    .line 21
    const-string v0, "http://vkontakte.ru/images/question_c.gif"

    iput-object v0, p0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 24
    iput v2, p0, Lcom/vkontakte/android/UserProfile;->online:I

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/vkontakte/android/UserProfile;->university:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/UserProfile;->bdate:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/UserProfile;->online:I

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/vkontakte/android/UserProfile;->f:Z

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/vkontakte/android/UserProfile;->isFriend:Z

    .line 37
    return-void

    :cond_0
    move v0, v2

    .line 35
    goto :goto_0

    :cond_1
    move v1, v2

    .line 36
    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 80
    instance-of v2, p1, Lcom/vkontakte/android/UserProfile;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 81
    check-cast v0, Lcom/vkontakte/android/UserProfile;

    .line 82
    .local v0, "p":Lcom/vkontakte/android/UserProfile;
    iget v2, p0, Lcom/vkontakte/android/UserProfile;->uid:I

    iget v3, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    iget-object v3, v0, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    iget-object v3, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 84
    .end local v0    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_0
    return v1
.end method

.method public getIndexChars()[C
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 89
    const/4 v0, 0x2

    new-array v0, v0, [C

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aput-char v1, v0, v4

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aput-char v2, v0, v1

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/vkontakte/android/UserProfile;->uid:I

    return v0
.end method

.method public matches(Ljava/lang/String;)Z
    .locals 1
    .param p1, "q"    # Ljava/lang/String;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    if-nez p0, :cond_0

    const-string v0, "<NULL>"

    .line 72
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 61
    iget v0, p0, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    iget-object v0, p0, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    iget v0, p0, Lcom/vkontakte/android/UserProfile;->online:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    iget-boolean v0, p0, Lcom/vkontakte/android/UserProfile;->f:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    iget-boolean v0, p0, Lcom/vkontakte/android/UserProfile;->isFriend:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    return-void

    :cond_0
    move v0, v2

    .line 66
    goto :goto_0

    :cond_1
    move v1, v2

    .line 67
    goto :goto_1
.end method
