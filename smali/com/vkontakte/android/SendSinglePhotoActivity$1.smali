.class Lcom/vkontakte/android/SendSinglePhotoActivity$1;
.super Ljava/lang/Object;
.source "SendSinglePhotoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/SendSinglePhotoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/SendSinglePhotoActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/SendSinglePhotoActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/SendSinglePhotoActivity$1;->this$0:Lcom/vkontakte/android/SendSinglePhotoActivity;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/vkontakte/android/SendSinglePhotoActivity$1;->this$0:Lcom/vkontakte/android/SendSinglePhotoActivity;

    invoke-static {v0}, Lcom/vkontakte/android/SendSinglePhotoActivity;->access$0(Lcom/vkontakte/android/SendSinglePhotoActivity;)V

    .line 52
    return-void
.end method
