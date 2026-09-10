.class public Lcom/vkontakte/android/WallView$WallPhotosAdapter;
.super Lcom/vkontakte/android/NewsView$NewsPhotosAdapter;
.source "WallView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/WallView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "WallPhotosAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/WallView;


# direct methods
.method protected constructor <init>(Lcom/vkontakte/android/WallView;)V
    .locals 0

    .prologue
    .line 1329
    iput-object p1, p0, Lcom/vkontakte/android/WallView$WallPhotosAdapter;->this$0:Lcom/vkontakte/android/WallView;

    invoke-direct {p0, p1}, Lcom/vkontakte/android/NewsView$NewsPhotosAdapter;-><init>(Lcom/vkontakte/android/NewsView;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 1331
    iget-object v0, p0, Lcom/vkontakte/android/WallView$WallPhotosAdapter;->this$0:Lcom/vkontakte/android/WallView;

    iget-object v0, v0, Lcom/vkontakte/android/WallView;->news:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method
