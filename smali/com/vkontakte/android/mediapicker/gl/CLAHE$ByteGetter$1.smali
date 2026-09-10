.class Lcom/vkontakte/android/mediapicker/gl/CLAHE$ByteGetter$1;
.super Lcom/vkontakte/android/mediapicker/gl/CLAHE$ByteGetter;
.source "CLAHE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/gl/CLAHE$ByteGetter;->wrap([II)Lcom/vkontakte/android/mediapicker/gl/CLAHE$ByteGetter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$bytes:[I

.field private final synthetic val$height:I


# direct methods
.method constructor <init>([II)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/gl/CLAHE$ByteGetter$1;->val$bytes:[I

    iput p2, p0, Lcom/vkontakte/android/mediapicker/gl/CLAHE$ByteGetter$1;->val$height:I

    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vkontakte/android/mediapicker/gl/CLAHE$ByteGetter;-><init>(Lcom/vkontakte/android/mediapicker/gl/CLAHE$ByteGetter;)V

    return-void
.end method


# virtual methods
.method public get(II)I
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 32
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gl/CLAHE$ByteGetter$1;->val$bytes:[I

    iget v1, p0, Lcom/vkontakte/android/mediapicker/gl/CLAHE$ByteGetter$1;->val$height:I

    mul-int/2addr v1, p2

    add-int/2addr v1, p1

    aget v0, v0, v1

    return v0
.end method
