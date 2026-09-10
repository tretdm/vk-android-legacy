.class public Lcom/vkontakte/android/UserProfile;
.super Ljava/lang/Object;
.source "UserProfile.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


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


# instance fields
.field public bdate:Ljava/lang/String;

.field public city:I

.field public country:I

.field public f:Z

.field public firstName:Ljava/lang/String;

.field public fullName:Ljava/lang/String;

.field public lastName:Ljava/lang/String;

.field public online:Z

.field public photo:Ljava/lang/String;

.field public uid:I

.field public university:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/vkontakte/android/UserProfile$1;

    invoke-direct {v0}, Lcom/vkontakte/android/UserProfile$1;-><init>()V

    .line 32
    sput-object v0, Lcom/vkontakte/android/UserProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, "DELETED"

    iput-object v0, p0, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    .line 12
    const-string v0, "DELETED"

    iput-object v0, p0, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 13
    const-string v0, "DELETED"

    iput-object v0, p0, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    .line 14
    const-string v0, "http://vkontakte.ru/images/question_c.gif"

    iput-object v0, p0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/vkontakte/android/UserProfile;->university:Ljava/lang/String;

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/UserProfile;->bdate:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v1, "DELETED"

    iput-object v1, p0, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    .line 12
    const-string v1, "DELETED"

    iput-object v1, p0, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 13
    const-string v1, "DELETED"

    iput-object v1, p0, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    .line 14
    const-string v1, "http://vkontakte.ru/images/question_c.gif"

    iput-object v1, p0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 17
    const-string v1, ""

    iput-object v1, p0, Lcom/vkontakte/android/UserProfile;->university:Ljava/lang/String;

    .line 18
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vkontakte/android/UserProfile;->bdate:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/vkontakte/android/UserProfile;->online:Z

    .line 26
    return-void

    .line 25
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Lcom/vkontakte/android/UserProfile;)Z
    .locals 2
    .param p1, "p"    # Lcom/vkontakte/android/UserProfile;

    .prologue
    .line 63
    iget v0, p0, Lcom/vkontakte/android/UserProfile;->uid:I

    iget v1, p1, Lcom/vkontakte/android/UserProfile;->uid:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    iget-object v1, p1, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    iget-object v1, p1, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    if-nez p0, :cond_0

    const-string v0, "<NULL>"

    .line 59
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .prologue
    .line 50
    iget v0, p0, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    iget-object v0, p0, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    iget-boolean v0, p0, Lcom/vkontakte/android/UserProfile;->online:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    return-void

    .line 54
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
