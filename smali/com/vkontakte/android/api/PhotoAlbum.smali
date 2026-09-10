.class public Lcom/vkontakte/android/api/PhotoAlbum;
.super Ljava/lang/Object;
.source "PhotoAlbum.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vkontakte/android/api/PhotoAlbum;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRIVACY_ALL:I = 0x0

.field public static final PRIVACY_EXTENDED:I = 0x4

.field public static final PRIVACY_FRIENDS:I = 0x1

.field public static final PRIVACY_ME:I = 0x3

.field public static final PRIVACY_UNKNOWN:I = -0x1

.field public static final PRIVACY_XFRIENDS:I = 0x2


# instance fields
.field public canUpload:Z

.field public created:I

.field public descr:Ljava/lang/String;

.field public id:I

.field public numPhotos:I

.field public oid:I

.field public privacy:I

.field public thumbURL:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public updated:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    new-instance v0, Lcom/vkontakte/android/api/PhotoAlbum$1;

    invoke-direct {v0}, Lcom/vkontakte/android/api/PhotoAlbum$1;-><init>()V

    sput-object v0, Lcom/vkontakte/android/api/PhotoAlbum;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/vkontakte/android/api/PhotoAlbum;->id:I

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/vkontakte/android/api/PhotoAlbum;->oid:I

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/vkontakte/android/api/PhotoAlbum;->updated:I

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/vkontakte/android/api/PhotoAlbum;->created:I

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/vkontakte/android/api/PhotoAlbum;->numPhotos:I

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/api/PhotoAlbum;->title:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/api/PhotoAlbum;->descr:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/vkontakte/android/api/PhotoAlbum;->privacy:I

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/api/PhotoAlbum;->thumbURL:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/vkontakte/android/api/PhotoAlbum;->canUpload:Z

    .line 82
    return-void

    .line 81
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "ja"    # Lorg/json/JSONObject;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    :try_start_0
    const-string v3, "created"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/vkontakte/android/api/PhotoAlbum;->created:I

    .line 39
    const-string v3, "updated"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/vkontakte/android/api/PhotoAlbum;->updated:I

    .line 40
    const-string v3, "title"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vkontakte/android/api/PhotoAlbum;->title:Ljava/lang/String;

    .line 41
    iget-object v3, p0, Lcom/vkontakte/android/api/PhotoAlbum;->title:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0021

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vkontakte/android/api/PhotoAlbum;->title:Ljava/lang/String;

    .line 42
    :cond_0
    const-string v3, "description"

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vkontakte/android/api/PhotoAlbum;->descr:Ljava/lang/String;

    .line 43
    const-string v3, "id"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/vkontakte/android/api/PhotoAlbum;->id:I

    .line 44
    const-string v3, "owner_id"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/vkontakte/android/api/PhotoAlbum;->oid:I

    .line 45
    const-string v3, "size"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/vkontakte/android/api/PhotoAlbum;->numPhotos:I

    .line 46
    const-string v3, "privacy_view"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 47
    .local v0, "jpriv":Lorg/json/JSONObject;
    if-eqz v0, :cond_2

    .line 48
    const-string v3, "lists"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "except_lists"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "users"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "except_users"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 49
    :cond_1
    const/4 v3, 0x4

    iput v3, p0, Lcom/vkontakte/android/api/PhotoAlbum;->privacy:I

    .line 65
    :cond_2
    :goto_0
    const-string v3, "thumb_src"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vkontakte/android/api/PhotoAlbum;->thumbURL:Ljava/lang/String;

    .line 69
    .end local v0    # "jpriv":Lorg/json/JSONObject;
    :goto_1
    return-void

    .line 51
    .restart local v0    # "jpriv":Lorg/json/JSONObject;
    :cond_3
    const-string v3, "type"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, "type":Ljava/lang/String;
    const-string v3, "all"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 53
    const/4 v3, 0x0

    iput v3, p0, Lcom/vkontakte/android/api/PhotoAlbum;->privacy:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 66
    .end local v0    # "jpriv":Lorg/json/JSONObject;
    .end local v1    # "type":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 67
    .local v2, "x":Ljava/lang/Exception;
    const-string v3, "vk"

    const-string v4, "Error parsing photo album"

    invoke-static {v3, v4, v2}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 54
    .end local v2    # "x":Ljava/lang/Exception;
    .restart local v0    # "jpriv":Lorg/json/JSONObject;
    .restart local v1    # "type":Ljava/lang/String;
    :cond_4
    :try_start_1
    const-string v3, "nobody"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 55
    const/4 v3, 0x3

    iput v3, p0, Lcom/vkontakte/android/api/PhotoAlbum;->privacy:I

    goto :goto_0

    .line 56
    :cond_5
    const-string v3, "friends"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 57
    const/4 v3, 0x1

    iput v3, p0, Lcom/vkontakte/android/api/PhotoAlbum;->privacy:I

    goto :goto_0

    .line 58
    :cond_6
    const-string v3, "friends_of_friends"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 59
    const/4 v3, 0x2

    iput v3, p0, Lcom/vkontakte/android/api/PhotoAlbum;->privacy:I

    goto :goto_0

    .line 61
    :cond_7
    const/4 v3, -0x1

    iput v3, p0, Lcom/vkontakte/android/api/PhotoAlbum;->privacy:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .prologue
    .line 101
    iget v0, p0, Lcom/vkontakte/android/api/PhotoAlbum;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    iget v0, p0, Lcom/vkontakte/android/api/PhotoAlbum;->oid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    iget v0, p0, Lcom/vkontakte/android/api/PhotoAlbum;->updated:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    iget v0, p0, Lcom/vkontakte/android/api/PhotoAlbum;->created:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    iget v0, p0, Lcom/vkontakte/android/api/PhotoAlbum;->numPhotos:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    iget-object v0, p0, Lcom/vkontakte/android/api/PhotoAlbum;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/vkontakte/android/api/PhotoAlbum;->descr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    iget v0, p0, Lcom/vkontakte/android/api/PhotoAlbum;->privacy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    iget-object v0, p0, Lcom/vkontakte/android/api/PhotoAlbum;->thumbURL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    iget-boolean v0, p0, Lcom/vkontakte/android/api/PhotoAlbum;->canUpload:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    return-void

    .line 110
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
