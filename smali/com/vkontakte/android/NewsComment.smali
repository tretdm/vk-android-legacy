.class public Lcom/vkontakte/android/NewsComment;
.super Ljava/lang/Object;
.source "NewsComment.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vkontakte/android/NewsComment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public attachments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/Attachment;",
            ">;"
        }
    .end annotation
.end field

.field public canDelete:Z

.field public cid:I

.field public cnum:I

.field public displayableText:Ljava/lang/CharSequence;

.field public isDeleted:Z

.field public isLiked:Z

.field public linkTitles:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public links:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public numLikes:I

.field public respToName:Ljava/lang/String;

.field public resp_to:I

.field public text:Ljava/lang/String;

.field public time:I

.field public uid:I

.field public userName:Ljava/lang/String;

.field public userPhoto:Ljava/lang/String;

.field public userRName:Ljava/lang/String;

.field public userWName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lcom/vkontakte/android/NewsComment$1;

    invoke-direct {v0}, Lcom/vkontakte/android/NewsComment$1;-><init>()V

    .line 74
    sput-object v0, Lcom/vkontakte/android/NewsComment;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 83
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/NewsComment;->attachments:Ljava/util/ArrayList;

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/NewsComment;->attachments:Ljava/util/ArrayList;

    .line 44
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 3
    .param p1, "t"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/vkontakte/android/NewsComment;->text:Ljava/lang/String;

    .line 71
    iget-object v0, p0, Lcom/vkontakte/android/NewsComment;->text:Ljava/lang/String;

    const-string v1, "\\[(id|club)(\\d+)\\|([^\\]]+)\\]"

    const-string v2, "$3"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/Global;->replaceEmoji(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/NewsComment;->displayableText:Ljava/lang/CharSequence;

    .line 72
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 49
    iget-object v0, p0, Lcom/vkontakte/android/NewsComment;->text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/vkontakte/android/NewsComment;->userName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/vkontakte/android/NewsComment;->userRName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/vkontakte/android/NewsComment;->userWName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    iget v0, p0, Lcom/vkontakte/android/NewsComment;->time:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    iget-object v0, p0, Lcom/vkontakte/android/NewsComment;->respToName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/vkontakte/android/NewsComment;->userPhoto:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    iget v0, p0, Lcom/vkontakte/android/NewsComment;->cid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    iget v0, p0, Lcom/vkontakte/android/NewsComment;->uid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    iget v0, p0, Lcom/vkontakte/android/NewsComment;->cnum:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    iget v0, p0, Lcom/vkontakte/android/NewsComment;->resp_to:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    iget-boolean v0, p0, Lcom/vkontakte/android/NewsComment;->canDelete:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    iget-object v0, p0, Lcom/vkontakte/android/NewsComment;->links:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 62
    iget-object v0, p0, Lcom/vkontakte/android/NewsComment;->linkTitles:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 63
    iget v0, p0, Lcom/vkontakte/android/NewsComment;->numLikes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    iget-boolean v0, p0, Lcom/vkontakte/android/NewsComment;->isLiked:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    iget-boolean v0, p0, Lcom/vkontakte/android/NewsComment;->isDeleted:Z

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    iget-object v0, p0, Lcom/vkontakte/android/NewsComment;->text:Ljava/lang/String;

    invoke-static {v0}, Lcom/vkontakte/android/Global;->replaceEmoji(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/NewsComment;->displayableText:Ljava/lang/CharSequence;

    .line 67
    return-void

    :cond_0
    move v0, v2

    .line 60
    goto :goto_0

    :cond_1
    move v0, v2

    .line 64
    goto :goto_1

    :cond_2
    move v1, v2

    .line 65
    goto :goto_2
.end method
