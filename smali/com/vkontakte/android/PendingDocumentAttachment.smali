.class public Lcom/vkontakte/android/PendingDocumentAttachment;
.super Lcom/vkontakte/android/DocumentAttachment;
.source "PendingDocumentAttachment.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vkontakte/android/PendingDocumentAttachment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/vkontakte/android/PendingDocumentAttachment$1;

    invoke-direct {v0}, Lcom/vkontakte/android/PendingDocumentAttachment$1;-><init>()V

    sput-object v0, Lcom/vkontakte/android/PendingDocumentAttachment;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/vkontakte/android/DocumentAttachment;-><init>(Landroid/os/Parcel;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;II)V
    .locals 0
    .param p1, "_title"    # Ljava/lang/String;
    .param p2, "_url"    # Ljava/lang/String;
    .param p3, "_size"    # I
    .param p4, "_thumb"    # Ljava/lang/String;
    .param p5, "_oid"    # I
    .param p6, "_did"    # I

    .prologue
    .line 9
    invoke-direct/range {p0 .. p6}, Lcom/vkontakte/android/DocumentAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;II)V

    .line 11
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .prologue
    .line 34
    invoke-super {p0, p1, p2}, Lcom/vkontakte/android/DocumentAttachment;->writeToParcel(Landroid/os/Parcel;I)V

    .line 35
    return-void
.end method
