.class Lcom/vkontakte/android/ImageLoader$QueueEntry;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QueueEntry"
.end annotation


# instance fields
.field id:J

.field resize:Z

.field url:Ljava/lang/String;

.field v:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Ljava/lang/String;ZJ)V
    .locals 0
    .param p1, "_v"    # Landroid/widget/ImageView;
    .param p2, "_url"    # Ljava/lang/String;
    .param p3, "_resize"    # Z
    .param p4, "_id"    # J

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Lcom/vkontakte/android/ImageLoader$QueueEntry;->v:Landroid/widget/ImageView;

    .line 109
    iput-object p2, p0, Lcom/vkontakte/android/ImageLoader$QueueEntry;->url:Ljava/lang/String;

    .line 110
    iput-boolean p3, p0, Lcom/vkontakte/android/ImageLoader$QueueEntry;->resize:Z

    .line 111
    iput-wide p4, p0, Lcom/vkontakte/android/ImageLoader$QueueEntry;->id:J

    .line 112
    return-void
.end method
