.class Lcom/vkontakte/android/NewsfeedActivity$2;
.super Ljava/lang/Object;
.source "NewsfeedActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NewsfeedActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/NewsfeedActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NewsfeedActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NewsfeedActivity$2;->this$0:Lcom/vkontakte/android/NewsfeedActivity;

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/vkontakte/android/NewsfeedActivity$2;->this$0:Lcom/vkontakte/android/NewsfeedActivity;

    invoke-static {v0}, Lcom/vkontakte/android/NewsfeedActivity;->access$4(Lcom/vkontakte/android/NewsfeedActivity;)V

    .line 132
    return-void
.end method
