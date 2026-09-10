.class public abstract Lcom/vkontakte/android/ui/posts/PostDisplayItem;
.super Ljava/lang/Object;
.source "PostDisplayItem.java"


# static fields
.field public static final TYPE_ATTACH_CONTAINER:I = 0x9

.field public static final TYPE_AUDIO_ATTACH:I = 0x6

.field public static final TYPE_BUTTONS:I = 0xa

.field public static final TYPE_COMMENT:I = 0x4

.field public static final TYPE_COMMON_ATTACH:I = 0x7

.field public static final TYPE_FOOTER:I = 0x1

.field public static final TYPE_HEADER:I = 0x0

.field public static final TYPE_REPOST:I = 0x3

.field public static final TYPE_SIGNATURE:I = 0x8

.field public static final TYPE_TEXT:I = 0x2

.field public static final TYPE_THUMBS_BLOCK:I = 0x5


# instance fields
.field public bgType:I

.field public clickable:Z

.field public postID:I

.field public postOwnerID:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "_postID"    # I
    .param p2, "_postOwnerID"    # I

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/posts/PostDisplayItem;->clickable:Z

    .line 59
    iput p1, p0, Lcom/vkontakte/android/ui/posts/PostDisplayItem;->postID:I

    .line 60
    iput p2, p0, Lcom/vkontakte/android/ui/posts/PostDisplayItem;->postOwnerID:I

    .line 61
    return-void
.end method


# virtual methods
.method public abstract getImageCount()I
.end method

.method public abstract getImageURL(I)Ljava/lang/String;
.end method

.method public abstract getType()I
.end method

.method public abstract getView(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
.end method

.method public abstract setImage(ILandroid/view/View;Landroid/graphics/Bitmap;Z)V
.end method
