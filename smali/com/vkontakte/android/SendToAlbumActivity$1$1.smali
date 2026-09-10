.class Lcom/vkontakte/android/SendToAlbumActivity$1$1;
.super Ljava/lang/Object;
.source "SendToAlbumActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/SendToAlbumActivity$1;->success(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/SendToAlbumActivity$1;

.field private final synthetic val$aids:[I

.field private final synthetic val$atitles:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/SendToAlbumActivity$1;[Ljava/lang/String;[I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/SendToAlbumActivity$1$1;->this$1:Lcom/vkontakte/android/SendToAlbumActivity$1;

    iput-object p2, p0, Lcom/vkontakte/android/SendToAlbumActivity$1$1;->val$atitles:[Ljava/lang/String;

    iput-object p3, p0, Lcom/vkontakte/android/SendToAlbumActivity$1$1;->val$aids:[I

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 77
    iget-object v0, p0, Lcom/vkontakte/android/SendToAlbumActivity$1$1;->this$1:Lcom/vkontakte/android/SendToAlbumActivity$1;

    invoke-static {v0}, Lcom/vkontakte/android/SendToAlbumActivity$1;->access$0(Lcom/vkontakte/android/SendToAlbumActivity$1;)Lcom/vkontakte/android/SendToAlbumActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/SendToAlbumActivity$1$1;->val$atitles:[Ljava/lang/String;

    iget-object v2, p0, Lcom/vkontakte/android/SendToAlbumActivity$1$1;->val$aids:[I

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/SendToAlbumActivity;->showDialog([Ljava/lang/String;[I)V

    .line 78
    return-void
.end method
