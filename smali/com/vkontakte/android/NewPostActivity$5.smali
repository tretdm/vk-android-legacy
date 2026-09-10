.class Lcom/vkontakte/android/NewPostActivity$5;
.super Ljava/lang/Object;
.source "NewPostActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NewPostActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/NewPostActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NewPostActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NewPostActivity$5;->this$0:Lcom/vkontakte/android/NewPostActivity;

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 201
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity$5;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/NewPostActivity;->showOptions()V

    .line 202
    return-void
.end method
