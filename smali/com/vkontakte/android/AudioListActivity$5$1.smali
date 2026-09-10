.class Lcom/vkontakte/android/AudioListActivity$5$1;
.super Ljava/lang/Object;
.source "AudioListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/AudioListActivity$5;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/AudioListActivity$5;

.field private final synthetic val$_idx:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/AudioListActivity$5;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/AudioListActivity$5$1;->this$1:Lcom/vkontakte/android/AudioListActivity$5;

    iput p2, p0, Lcom/vkontakte/android/AudioListActivity$5$1;->val$_idx:I

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 195
    iget v1, p0, Lcom/vkontakte/android/AudioListActivity$5$1;->val$_idx:I

    .line 196
    .local v1, "idx":I
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/vkontakte/android/AudioListActivity$5$1;->this$1:Lcom/vkontakte/android/AudioListActivity$5;

    invoke-static {v3}, Lcom/vkontakte/android/AudioListActivity$5;->access$0(Lcom/vkontakte/android/AudioListActivity$5;)Lcom/vkontakte/android/AudioListActivity;

    move-result-object v3

    const-class v4, Lcom/vkontakte/android/AudioPlayerService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 197
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "action"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 198
    iget-object v3, p0, Lcom/vkontakte/android/AudioListActivity$5$1;->this$1:Lcom/vkontakte/android/AudioListActivity$5;

    invoke-static {v3}, Lcom/vkontakte/android/AudioListActivity$5;->access$0(Lcom/vkontakte/android/AudioListActivity$5;)Lcom/vkontakte/android/AudioListActivity;

    move-result-object v3

    iget-object v3, v3, Lcom/vkontakte/android/AudioListActivity;->audios:[Lcom/vkontakte/android/AudioFile;

    array-length v3, v3

    iget-object v4, p0, Lcom/vkontakte/android/AudioListActivity$5$1;->this$1:Lcom/vkontakte/android/AudioListActivity$5;

    invoke-static {v4}, Lcom/vkontakte/android/AudioListActivity$5;->access$0(Lcom/vkontakte/android/AudioListActivity$5;)Lcom/vkontakte/android/AudioListActivity;

    move-result-object v4

    iget-object v4, v4, Lcom/vkontakte/android/AudioListActivity;->searchResults:[Lcom/vkontakte/android/AudioFile;

    array-length v4, v4

    add-int/2addr v3, v4

    new-array v0, v3, [Lcom/vkontakte/android/AudioFile;

    .line 199
    .local v0, "files":[Lcom/vkontakte/android/AudioFile;
    iget-object v3, p0, Lcom/vkontakte/android/AudioListActivity$5$1;->this$1:Lcom/vkontakte/android/AudioListActivity$5;

    invoke-static {v3}, Lcom/vkontakte/android/AudioListActivity$5;->access$0(Lcom/vkontakte/android/AudioListActivity$5;)Lcom/vkontakte/android/AudioListActivity;

    move-result-object v3

    iget-object v3, v3, Lcom/vkontakte/android/AudioListActivity;->audios:[Lcom/vkontakte/android/AudioFile;

    iget-object v4, p0, Lcom/vkontakte/android/AudioListActivity$5$1;->this$1:Lcom/vkontakte/android/AudioListActivity$5;

    invoke-static {v4}, Lcom/vkontakte/android/AudioListActivity$5;->access$0(Lcom/vkontakte/android/AudioListActivity$5;)Lcom/vkontakte/android/AudioListActivity;

    move-result-object v4

    iget-object v4, v4, Lcom/vkontakte/android/AudioListActivity;->audios:[Lcom/vkontakte/android/AudioFile;

    array-length v4, v4

    invoke-static {v3, v6, v0, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 200
    iget-object v3, p0, Lcom/vkontakte/android/AudioListActivity$5$1;->this$1:Lcom/vkontakte/android/AudioListActivity$5;

    invoke-static {v3}, Lcom/vkontakte/android/AudioListActivity$5;->access$0(Lcom/vkontakte/android/AudioListActivity$5;)Lcom/vkontakte/android/AudioListActivity;

    move-result-object v3

    iget-object v3, v3, Lcom/vkontakte/android/AudioListActivity;->searchResults:[Lcom/vkontakte/android/AudioFile;

    iget-object v4, p0, Lcom/vkontakte/android/AudioListActivity$5$1;->this$1:Lcom/vkontakte/android/AudioListActivity$5;

    invoke-static {v4}, Lcom/vkontakte/android/AudioListActivity$5;->access$0(Lcom/vkontakte/android/AudioListActivity$5;)Lcom/vkontakte/android/AudioListActivity;

    move-result-object v4

    iget-object v4, v4, Lcom/vkontakte/android/AudioListActivity;->audios:[Lcom/vkontakte/android/AudioFile;

    array-length v4, v4

    iget-object v5, p0, Lcom/vkontakte/android/AudioListActivity$5$1;->this$1:Lcom/vkontakte/android/AudioListActivity$5;

    invoke-static {v5}, Lcom/vkontakte/android/AudioListActivity$5;->access$0(Lcom/vkontakte/android/AudioListActivity$5;)Lcom/vkontakte/android/AudioListActivity;

    move-result-object v5

    iget-object v5, v5, Lcom/vkontakte/android/AudioListActivity;->searchResults:[Lcom/vkontakte/android/AudioFile;

    array-length v5, v5

    invoke-static {v3, v6, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 201
    array-length v3, v0

    const/16 v4, 0x1f4

    if-ge v3, v4, :cond_1

    const-string v3, "list"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 206
    :goto_0
    iget-object v3, p0, Lcom/vkontakte/android/AudioListActivity$5$1;->this$1:Lcom/vkontakte/android/AudioListActivity$5;

    invoke-static {v3}, Lcom/vkontakte/android/AudioListActivity$5;->access$0(Lcom/vkontakte/android/AudioListActivity$5;)Lcom/vkontakte/android/AudioListActivity;

    move-result-object v3

    iget-object v3, v3, Lcom/vkontakte/android/AudioListActivity;->audios:[Lcom/vkontakte/android/AudioFile;

    array-length v3, v3

    if-lt v1, v3, :cond_0

    add-int/lit8 v1, v1, -0x1

    .line 207
    :cond_0
    const-string v3, "position"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 208
    iget-object v3, p0, Lcom/vkontakte/android/AudioListActivity$5$1;->this$1:Lcom/vkontakte/android/AudioListActivity$5;

    invoke-static {v3}, Lcom/vkontakte/android/AudioListActivity$5;->access$0(Lcom/vkontakte/android/AudioListActivity$5;)Lcom/vkontakte/android/AudioListActivity;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/vkontakte/android/AudioListActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 209
    return-void

    .line 203
    :cond_1
    const-string v3, "list"

    new-array v4, v6, [Lcom/vkontakte/android/AudioFile;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 204
    sput-object v0, Lcom/vkontakte/android/AudioPlayerService;->listToPlay:[Lcom/vkontakte/android/AudioFile;

    goto :goto_0
.end method
