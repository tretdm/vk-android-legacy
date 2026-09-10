.class Lcom/vkontakte/android/SendToAlbumActivity$2;
.super Ljava/lang/Object;
.source "SendToAlbumActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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


# direct methods
.method constructor <init>(Lcom/vkontakte/android/SendToAlbumActivity;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/vkontakte/android/SendToAlbumActivity$2;->this$0:Lcom/vkontakte/android/SendToAlbumActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/vkontakte/android/SendToAlbumActivity$2;->this$0:Lcom/vkontakte/android/SendToAlbumActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/SendToAlbumActivity;->finish()V

    .line 159
    return-void
.end method
