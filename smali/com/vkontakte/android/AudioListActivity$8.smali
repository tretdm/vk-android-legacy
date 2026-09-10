.class Lcom/vkontakte/android/AudioListActivity$8;
.super Ljava/lang/Object;
.source "AudioListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/AudioListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/AudioListActivity;

.field private final synthetic val$search:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/AudioListActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/AudioListActivity$8;->this$0:Lcom/vkontakte/android/AudioListActivity;

    iput-object p2, p0, Lcom/vkontakte/android/AudioListActivity$8;->val$search:Ljava/lang/String;

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 267
    iget-object v0, p0, Lcom/vkontakte/android/AudioListActivity$8;->this$0:Lcom/vkontakte/android/AudioListActivity;

    iget-object v1, p0, Lcom/vkontakte/android/AudioListActivity$8;->val$search:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/AudioListActivity;->search(Ljava/lang/String;I)V

    .line 268
    return-void
.end method
