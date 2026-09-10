.class Lcom/vkontakte/android/SDKAuthActivity$2;
.super Ljava/lang/Object;
.source "SDKAuthActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/SDKAuthActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/SDKAuthActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/SDKAuthActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/SDKAuthActivity$2;->this$0:Lcom/vkontakte/android/SDKAuthActivity;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/vkontakte/android/SDKAuthActivity$2;->this$0:Lcom/vkontakte/android/SDKAuthActivity;

    invoke-static {v0}, Lcom/vkontakte/android/SDKAuthActivity;->access$2(Lcom/vkontakte/android/SDKAuthActivity;)Lcom/vkontakte/android/ui/ErrorView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/ErrorView;->setVisibility(I)V

    .line 76
    iget-object v0, p0, Lcom/vkontakte/android/SDKAuthActivity$2;->this$0:Lcom/vkontakte/android/SDKAuthActivity;

    invoke-static {v0}, Lcom/vkontakte/android/SDKAuthActivity;->access$1(Lcom/vkontakte/android/SDKAuthActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    .line 77
    return-void
.end method
