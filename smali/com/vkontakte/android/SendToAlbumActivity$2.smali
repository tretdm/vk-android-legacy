.class Lcom/vkontakte/android/SendToAlbumActivity$2;
.super Ljava/lang/Object;
.source "SendToAlbumActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/SendToAlbumActivity;->showDialog([Ljava/lang/String;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/SendToAlbumActivity;

.field private final synthetic val$aids:[I

.field private final synthetic val$atitles:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/SendToAlbumActivity;[I[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/SendToAlbumActivity$2;->this$0:Lcom/vkontakte/android/SendToAlbumActivity;

    iput-object p2, p0, Lcom/vkontakte/android/SendToAlbumActivity$2;->val$aids:[I

    iput-object p3, p0, Lcom/vkontakte/android/SendToAlbumActivity$2;->val$atitles:[Ljava/lang/String;

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 149
    iget-object v0, p0, Lcom/vkontakte/android/SendToAlbumActivity$2;->val$aids:[I

    aget v0, v0, p2

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 150
    iget-object v0, p0, Lcom/vkontakte/android/SendToAlbumActivity$2;->this$0:Lcom/vkontakte/android/SendToAlbumActivity;

    invoke-static {v0}, Lcom/vkontakte/android/SendToAlbumActivity;->access$0(Lcom/vkontakte/android/SendToAlbumActivity;)V

    .line 153
    :goto_0
    return-void

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/SendToAlbumActivity$2;->this$0:Lcom/vkontakte/android/SendToAlbumActivity;

    iget-object v1, p0, Lcom/vkontakte/android/SendToAlbumActivity$2;->val$aids:[I

    aget v1, v1, p2

    iget-object v2, p0, Lcom/vkontakte/android/SendToAlbumActivity$2;->val$atitles:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/SendToAlbumActivity;->doSend(ILjava/lang/String;)V

    goto :goto_0
.end method
