.class public Lcom/vkontakte/android/Navigate;
.super Ljava/lang/Object;
.source "Navigate.java"


# static fields
.field private static lastPhotoTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 9
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/vkontakte/android/Navigate;->lastPhotoTime:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V
    .locals 2
    .param p0, "fragmentClassName"    # Ljava/lang/String;
    .param p1, "args"    # Landroid/os/Bundle;
    .param p2, "act"    # Landroid/app/Activity;

    .prologue
    .line 23
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vkontakte/android/FragmentWrapperActivity;

    invoke-direct {v0, p2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 24
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "class"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    const-string v1, "args"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 26
    invoke-virtual {p2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 28
    return-void
.end method

.method public static to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;ZII)V
    .locals 9
    .param p0, "fragmentClassName"    # Ljava/lang/String;
    .param p1, "args"    # Landroid/os/Bundle;
    .param p2, "act"    # Landroid/app/Activity;
    .param p3, "overlay"    # Z
    .param p4, "inAnim"    # I
    .param p5, "outAnim"    # I

    .prologue
    const/4 v8, -0x1

    const/4 v3, 0x0

    .line 32
    const-string v2, "PhotoViewerFragment"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Lcom/vkontakte/android/Navigate;->lastPhotoTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x12c

    cmp-long v2, v4, v6

    if-gez v2, :cond_0

    .line 60
    :goto_0
    return-void

    .line 34
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sput-wide v4, Lcom/vkontakte/android/Navigate;->lastPhotoTime:J

    .line 35
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/vkontakte/android/PhotoViewerActivity;

    invoke-direct {v0, p2, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 36
    .local v0, "intent":Landroid/content/Intent;
    instance-of v2, p2, Landroid/app/Activity;

    if-eqz v2, :cond_1

    .line 37
    move-object v1, p2

    .line 38
    .local v1, "sa":Landroid/app/Activity;
    const-string v4, "anim_clip_top"

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActionBar;->getHeight()I

    move-result v2

    :goto_1
    invoke-virtual {p1, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 40
    .end local v1    # "sa":Landroid/app/Activity;
    :cond_1
    instance-of v2, p2, Lcom/vkontakte/android/MainActivity;

    if-eqz v2, :cond_6

    .line 41
    move-object v1, p2

    .line 42
    .restart local v1    # "sa":Landroid/app/Activity;
    const-string v2, "anim_clip_top"

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActionBar;->getHeight()I

    move-result v3

    :cond_2
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 52
    .end local v1    # "sa":Landroid/app/Activity;
    :cond_3
    :goto_2
    const-string v2, "class"

    invoke-virtual {v0, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    const-string v2, "args"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 54
    const-string v2, "overlaybar"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 55
    if-eq p4, v8, :cond_4

    if-eq p5, v8, :cond_4

    .line 56
    const-string v2, "in_anim"

    invoke-virtual {v0, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 57
    const-string v2, "out_anim"

    invoke-virtual {v0, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 59
    :cond_4
    invoke-virtual {p2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .restart local v1    # "sa":Landroid/app/Activity;
    :cond_5
    move v2, v3

    .line 38
    goto :goto_1

    .line 43
    .end local v1    # "sa":Landroid/app/Activity;
    :cond_6
    instance-of v2, p2, Landroid/app/Activity;

    if-eqz v2, :cond_3

    .line 44
    move-object v1, p2

    .line 45
    .restart local v1    # "sa":Landroid/app/Activity;
    const-string v2, "anim_clip_top"

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActionBar;->getHeight()I

    move-result v3

    :cond_7
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    .line 47
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "sa":Landroid/app/Activity;
    :cond_8
    const-string v2, "AudioPlayerFragment"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 48
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/vkontakte/android/AudioPlayerActivity;

    invoke-direct {v0, p2, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_2

    .line 50
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_9
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/vkontakte/android/FragmentWrapperActivity;

    invoke-direct {v0, p2, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_2
.end method
