.class Lcom/vkontakte/android/AudioPlayerActivity$CoverInfoHolder;
.super Ljava/lang/Object;
.source "AudioPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/AudioPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CoverInfoHolder"
.end annotation


# instance fields
.field cover:Landroid/graphics/Bitmap;

.field lyrics:Ljava/lang/String;

.field final synthetic this$0:Lcom/vkontakte/android/AudioPlayerActivity;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/AudioPlayerActivity;)V
    .locals 0

    .prologue
    .line 1022
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerActivity$CoverInfoHolder;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
