.class Lcom/vkontakte/android/WallActivity$7;
.super Ljava/lang/Object;
.source "WallActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/WallActivity;->showProfilePhotoBox()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/WallActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/WallActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/WallActivity$7;->this$0:Lcom/vkontakte/android/WallActivity;

    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 356
    packed-switch p2, :pswitch_data_0

    .line 364
    :goto_0
    return-void

    .line 358
    :pswitch_0
    iget-object v0, p0, Lcom/vkontakte/android/WallActivity$7;->this$0:Lcom/vkontakte/android/WallActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/WallActivity;->startCamera()V

    goto :goto_0

    .line 361
    :pswitch_1
    iget-object v0, p0, Lcom/vkontakte/android/WallActivity$7;->this$0:Lcom/vkontakte/android/WallActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/WallActivity;->startGallery()V

    goto :goto_0

    .line 356
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
