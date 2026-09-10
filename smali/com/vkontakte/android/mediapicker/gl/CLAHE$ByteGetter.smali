.class abstract Lcom/vkontakte/android/mediapicker/gl/CLAHE$ByteGetter;
.super Ljava/lang/Object;
.source "CLAHE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/mediapicker/gl/CLAHE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ByteGetter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/mediapicker/gl/CLAHE$ByteGetter;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/gl/CLAHE$ByteGetter;-><init>()V

    return-void
.end method

.method public static wrap([II)Lcom/vkontakte/android/mediapicker/gl/CLAHE$ByteGetter;
    .locals 1
    .param p0, "bytes"    # [I
    .param p1, "height"    # I

    .prologue
    .line 28
    new-instance v0, Lcom/vkontakte/android/mediapicker/gl/CLAHE$ByteGetter$1;

    invoke-direct {v0, p0, p1}, Lcom/vkontakte/android/mediapicker/gl/CLAHE$ByteGetter$1;-><init>([II)V

    return-object v0
.end method


# virtual methods
.method public abstract get(II)I
.end method
