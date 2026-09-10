.class Lcom/vkontakte/android/MessageView$1;
.super Ljava/lang/Object;
.source "MessageView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/MessageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/MessageView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/MessageView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/MessageView$1;->this$0:Lcom/vkontakte/android/MessageView;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 48
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 49
    .local v3, "t":Ljava/lang/Object;
    if-nez v3, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    instance-of v5, v3, Lcom/vkontakte/android/AudioAttachment;

    if-eqz v5, :cond_2

    .line 51
    new-instance v0, Lcom/vkontakte/android/AudioFile;

    move-object v5, v3

    check-cast v5, Lcom/vkontakte/android/AudioAttachment;

    invoke-direct {v0, v5}, Lcom/vkontakte/android/AudioFile;-><init>(Lcom/vkontakte/android/AudioAttachment;)V

    .line 52
    .local v0, "f":Lcom/vkontakte/android/AudioFile;
    new-instance v2, Landroid/content/Intent;

    iget-object v5, p0, Lcom/vkontakte/android/MessageView$1;->this$0:Lcom/vkontakte/android/MessageView;

    invoke-virtual {v5}, Lcom/vkontakte/android/MessageView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/vkontakte/android/AudioPlayerService;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 53
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "action"

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 54
    const-string v5, "file"

    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 55
    iget-object v5, p0, Lcom/vkontakte/android/MessageView$1;->this$0:Lcom/vkontakte/android/MessageView;

    invoke-virtual {v5}, Lcom/vkontakte/android/MessageView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 61
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/vkontakte/android/MessageView$1;->this$0:Lcom/vkontakte/android/MessageView;

    invoke-virtual {v5}, Lcom/vkontakte/android/MessageView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/vkontakte/android/AudioPlayerService;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 62
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v5, "action"

    const/4 v6, 0x4

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 63
    iget-object v5, p0, Lcom/vkontakte/android/MessageView$1;->this$0:Lcom/vkontakte/android/MessageView;

    invoke-virtual {v5}, Lcom/vkontakte/android/MessageView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 65
    .end local v0    # "f":Lcom/vkontakte/android/AudioFile;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_2
    instance-of v5, v3, Lcom/vkontakte/android/DocumentAttachment;

    if-eqz v5, :cond_3

    .line 66
    iget-object v5, p0, Lcom/vkontakte/android/MessageView$1;->this$0:Lcom/vkontakte/android/MessageView;

    invoke-virtual {v5}, Lcom/vkontakte/android/MessageView;->getContext()Landroid/content/Context;

    move-result-object v6

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    move-object v5, v3

    check-cast v5, Lcom/vkontakte/android/DocumentAttachment;

    iget-object v5, v5, Lcom/vkontakte/android/DocumentAttachment;->url:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v7, v8, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v6, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 68
    :cond_3
    instance-of v5, v3, Lcom/vkontakte/android/GeoAttachment;

    if-eqz v5, :cond_4

    move-object v1, v3

    .line 69
    check-cast v1, Lcom/vkontakte/android/GeoAttachment;

    .line 70
    .local v1, "ga":Lcom/vkontakte/android/GeoAttachment;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "geo:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, v1, Lcom/vkontakte/android/GeoAttachment;->lat:D

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v1, Lcom/vkontakte/android/GeoAttachment;->lon:D

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "?z=18&q="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v1, Lcom/vkontakte/android/GeoAttachment;->lat:D

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%2C"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v1, Lcom/vkontakte/android/GeoAttachment;->lon:D

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 72
    .local v4, "uri":Ljava/lang/String;
    iget-object v5, p0, Lcom/vkontakte/android/MessageView$1;->this$0:Lcom/vkontakte/android/MessageView;

    invoke-virtual {v5}, Lcom/vkontakte/android/MessageView;->getContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v5, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 74
    .end local v1    # "ga":Lcom/vkontakte/android/GeoAttachment;
    .end local v4    # "uri":Ljava/lang/String;
    :cond_4
    instance-of v5, v3, Lcom/vkontakte/android/PostAttachment;

    if-eqz v5, :cond_5

    .line 75
    new-instance v2, Landroid/content/Intent;

    iget-object v5, p0, Lcom/vkontakte/android/MessageView$1;->this$0:Lcom/vkontakte/android/MessageView;

    invoke-virtual {v5}, Lcom/vkontakte/android/MessageView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/vkontakte/android/PostViewActivity;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 76
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v6, "entry"

    move-object v5, v3

    check-cast v5, Lcom/vkontakte/android/PostAttachment;

    iget-object v5, v5, Lcom/vkontakte/android/PostAttachment;->post:Lcom/vkontakte/android/NewsEntry;

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 77
    iget-object v5, p0, Lcom/vkontakte/android/MessageView$1;->this$0:Lcom/vkontakte/android/MessageView;

    invoke-virtual {v5}, Lcom/vkontakte/android/MessageView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 79
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_5
    const-string v5, "fwd"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 80
    iget-object v5, p0, Lcom/vkontakte/android/MessageView$1;->this$0:Lcom/vkontakte/android/MessageView;

    invoke-static {v5}, Lcom/vkontakte/android/MessageView;->access$0(Lcom/vkontakte/android/MessageView;)V

    goto/16 :goto_0
.end method
