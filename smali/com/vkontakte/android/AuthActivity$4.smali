.class Lcom/vkontakte/android/AuthActivity$4;
.super Ljava/lang/Object;
.source "AuthActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/AuthActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/AuthActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/AuthActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/AuthActivity$4;->this$0:Lcom/vkontakte/android/AuthActivity;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 84
    const-string v0, "https://oauth.vk.com/join?scope=nohttps,all&client_id=2274003&client_secret=hHbZxrka2uZ6jB1inYsH"

    .line 85
    .local v0, "url":Ljava/lang/String;
    iget-object v1, p0, Lcom/vkontakte/android/AuthActivity$4;->this$0:Lcom/vkontakte/android/AuthActivity;

    invoke-static {v1, v0}, Lcom/vkontakte/android/AuthActivity;->access$0(Lcom/vkontakte/android/AuthActivity;Ljava/lang/String;)V

    .line 86
    return-void
.end method
