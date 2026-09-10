.class public Lcom/vkontakte/android/CallIncomingActivity;
.super Lcom/vkontakte/android/CustomTitleActivity;
.source "CallIncomingActivity.java"


# instance fields
.field private callID:I

.field private fromID:I

.field private receiver:Landroid/content/BroadcastReceiver;

.field private ringtonePlayer:Landroid/media/MediaPlayer;

.field private runPing:Z

.field private vibrator:Landroid/os/Vibrator;

.field private wakelock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/vkontakte/android/CustomTitleActivity;-><init>()V

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/CallIncomingActivity;->runPing:Z

    .line 36
    new-instance v0, Lcom/vkontakte/android/CallIncomingActivity$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/CallIncomingActivity$1;-><init>(Lcom/vkontakte/android/CallIncomingActivity;)V

    iput-object v0, p0, Lcom/vkontakte/android/CallIncomingActivity;->receiver:Landroid/content/BroadcastReceiver;

    .line 28
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/CallIncomingActivity;)I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/vkontakte/android/CallIncomingActivity;->callID:I

    return v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/CallIncomingActivity;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/vkontakte/android/CallIncomingActivity;->showMissedNotification()V

    return-void
.end method

.method static synthetic access$2(Lcom/vkontakte/android/CallIncomingActivity;)V
    .locals 0

    .prologue
    .line 249
    invoke-direct {p0}, Lcom/vkontakte/android/CallIncomingActivity;->stopRingtone()V

    return-void
.end method

.method static synthetic access$3(Lcom/vkontakte/android/CallIncomingActivity;)I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/vkontakte/android/CallIncomingActivity;->fromID:I

    return v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/CallIncomingActivity;)Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/vkontakte/android/CallIncomingActivity;->runPing:Z

    return v0
.end method

.method static synthetic access$5(Lcom/vkontakte/android/CallIncomingActivity;)Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/vkontakte/android/CallIncomingActivity;->ringtonePlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method private showMissedNotification()V
    .locals 9

    .prologue
    const v8, 0x7f0901e7

    const/4 v7, 0x0

    .line 50
    new-instance v0, Landroid/content/Intent;

    sget-object v3, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-class v4, Lcom/vkontakte/android/WallActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 51
    .local v0, "ii":Landroid/content/Intent;
    const-string v3, "wall_id"

    invoke-virtual {p0}, Lcom/vkontakte/android/CallIncomingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "from_id"

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 52
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "wall"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vkontakte/android/CallIncomingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "from_id"

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    new-instance v1, Landroid/app/Notification;

    const v3, 0x108007f

    invoke-virtual {p0}, Lcom/vkontakte/android/CallIncomingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 54
    .local v1, "n":Landroid/app/Notification;
    sget-object v3, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/vkontakte/android/CallIncomingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/vkontakte/android/CallIncomingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "user_name"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v6, v7, v0, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 55
    iget v3, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v1, Landroid/app/Notification;->flags:I

    .line 56
    const-string v3, "notification"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/CallIncomingActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 57
    .local v2, "nm":Landroid/app/NotificationManager;
    invoke-virtual {p0}, Lcom/vkontakte/android/CallIncomingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "from_id"

    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const/high16 v4, 0xff00000

    or-int/2addr v3, v4

    invoke-virtual {v2, v3, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 58
    return-void
.end method

.method private startRingtone()V
    .locals 8

    .prologue
    .line 218
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 219
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "voipRingtone"

    sget-object v4, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 221
    .local v2, "uri":Ljava/lang/String;
    :try_start_0
    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v3, p0, Lcom/vkontakte/android/CallIncomingActivity;->ringtonePlayer:Landroid/media/MediaPlayer;

    .line 222
    iget-object v3, p0, Lcom/vkontakte/android/CallIncomingActivity;->ringtonePlayer:Landroid/media/MediaPlayer;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, p0, v4}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 223
    iget-object v3, p0, Lcom/vkontakte/android/CallIncomingActivity;->ringtonePlayer:Landroid/media/MediaPlayer;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 224
    iget-object v3, p0, Lcom/vkontakte/android/CallIncomingActivity;->ringtonePlayer:Landroid/media/MediaPlayer;

    new-instance v4, Lcom/vkontakte/android/CallIncomingActivity$7;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/CallIncomingActivity$7;-><init>(Lcom/vkontakte/android/CallIncomingActivity;)V

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 231
    iget-object v3, p0, Lcom/vkontakte/android/CallIncomingActivity;->ringtonePlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 232
    const-string v3, "audio"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/CallIncomingActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 233
    .local v0, "mgr":Landroid/media/AudioManager;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setMode(I)V

    .line 234
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->shouldVibrate(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 235
    const-string v3, "vibrator"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/CallIncomingActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    iput-object v3, p0, Lcom/vkontakte/android/CallIncomingActivity;->vibrator:Landroid/os/Vibrator;

    .line 237
    iget-object v3, p0, Lcom/vkontakte/android/CallIncomingActivity;->vibrator:Landroid/os/Vibrator;

    const/4 v4, 0x3

    new-array v4, v4, [J

    const/4 v5, 0x1

    const-wide/16 v6, 0x2bc

    aput-wide v6, v4, v5

    const/4 v5, 0x2

    const-wide/16 v6, 0x1f4

    aput-wide v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/Vibrator;->vibrate([JI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    .end local v0    # "mgr":Landroid/media/AudioManager;
    :cond_0
    :goto_0
    return-void

    .line 240
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private stopRingtone()V
    .locals 2

    .prologue
    .line 250
    iget-object v1, p0, Lcom/vkontakte/android/CallIncomingActivity;->vibrator:Landroid/os/Vibrator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/CallIncomingActivity;->vibrator:Landroid/os/Vibrator;

    invoke-virtual {v1}, Landroid/os/Vibrator;->cancel()V

    .line 251
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/CallIncomingActivity;->ringtonePlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    .line 253
    :try_start_0
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/CallIncomingActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 254
    .local v0, "mgr":Landroid/media/AudioManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    .line 255
    iget-object v1, p0, Lcom/vkontakte/android/CallIncomingActivity;->ringtonePlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 256
    iget-object v1, p0, Lcom/vkontakte/android/CallIncomingActivity;->ringtonePlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 257
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vkontakte/android/CallIncomingActivity;->ringtonePlayer:Landroid/media/MediaPlayer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    .end local v0    # "mgr":Landroid/media/AudioManager;
    :cond_1
    :goto_0
    return-void

    .line 258
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 4

    .prologue
    .line 244
    invoke-super {p0}, Lcom/vkontakte/android/CustomTitleActivity;->onBackPressed()V

    .line 245
    invoke-direct {p0}, Lcom/vkontakte/android/CallIncomingActivity;->stopRingtone()V

    .line 246
    new-instance v0, Lcom/vkontakte/android/api/VoipHangup;

    iget v1, p0, Lcom/vkontakte/android/CallIncomingActivity;->callID:I

    iget v2, p0, Lcom/vkontakte/android/CallIncomingActivity;->fromID:I

    sget v3, Lcom/vkontakte/android/api/VoipHangup;->REASON_USER_NOT_REPLIED:I

    invoke-direct {v0, v1, v2, v3}, Lcom/vkontakte/android/api/VoipHangup;-><init>(III)V

    invoke-virtual {v0}, Lcom/vkontakte/android/api/VoipHangup;->exec()Lcom/vkontakte/android/APIRequest;

    .line 247
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const v6, 0x7f06008c

    const v5, 0x7f060049

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 61
    invoke-super {p0, p1}, Lcom/vkontakte/android/CustomTitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {p0}, Lcom/vkontakte/android/CallIncomingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v4, "call_id"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/vkontakte/android/CallIncomingActivity;->callID:I

    .line 64
    invoke-virtual {p0}, Lcom/vkontakte/android/CallIncomingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v4, "from_id"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/vkontakte/android/CallIncomingActivity;->fromID:I

    .line 66
    invoke-virtual {p0}, Lcom/vkontakte/android/CallIncomingActivity;->hideTitle()V

    .line 67
    const v1, 0x7f030023

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/CallIncomingActivity;->setContentView(I)V

    .line 68
    iget-object v1, p0, Lcom/vkontakte/android/CallIncomingActivity;->impl:Lcom/vkontakte/android/CustomTitleActivityImpl;

    invoke-virtual {v1}, Lcom/vkontakte/android/CustomTitleActivityImpl;->initGlobal()V

    .line 70
    const v1, 0x7f06008a

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/CallIncomingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v4, Lcom/vkontakte/android/CallIncomingActivity$2;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/CallIncomingActivity$2;-><init>(Lcom/vkontakte/android/CallIncomingActivity;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    const v1, 0x7f06008b

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/CallIncomingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v4, Lcom/vkontakte/android/CallIncomingActivity$3;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/CallIncomingActivity$3;-><init>(Lcom/vkontakte/android/CallIncomingActivity;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    invoke-virtual {p0, v6}, Lcom/vkontakte/android/CallIncomingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v4, Lcom/vkontakte/android/CallIncomingActivity$4;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/CallIncomingActivity$4;-><init>(Lcom/vkontakte/android/CallIncomingActivity;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    const v1, 0x7f060089

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/CallIncomingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    sget-boolean v1, Lcom/vkontakte/android/Global;->supportsVoipVideo:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 114
    invoke-virtual {p0, v6}, Lcom/vkontakte/android/CallIncomingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget-boolean v4, Lcom/vkontakte/android/Global;->supportsVoipVideo:Z

    if-eqz v4, :cond_2

    :goto_1
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 132
    const v1, 0x7f06008d

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/CallIncomingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v3, Lcom/vkontakte/android/CallIncomingActivity$5;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/CallIncomingActivity$5;-><init>(Lcom/vkontakte/android/CallIncomingActivity;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    const v1, 0x7f060047

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/CallIncomingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkontakte/android/CallIncomingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "user_name"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    invoke-virtual {p0, v5}, Lcom/vkontakte/android/CallIncomingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/vkontakte/android/CallIncomingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "user_photo"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 158
    new-instance v3, Lcom/vkontakte/android/ImageLoader;

    invoke-direct {v3}, Lcom/vkontakte/android/ImageLoader;-><init>()V

    invoke-virtual {p0, v5}, Lcom/vkontakte/android/CallIncomingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v1, v2, v4, v5}, Lcom/vkontakte/android/ImageLoader;->add(Landroid/widget/ImageView;ZJ)Lcom/vkontakte/android/ImageLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/ImageLoader;->start()V

    .line 160
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/vkontakte/android/CallIncomingActivity$6;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/CallIncomingActivity$6;-><init>(Lcom/vkontakte/android/CallIncomingActivity;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 202
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 204
    invoke-direct {p0}, Lcom/vkontakte/android/CallIncomingActivity;->startRingtone()V

    .line 206
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 207
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.vkontakte.android.VOIP_HANGUP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 208
    iget-object v1, p0, Lcom/vkontakte/android/CallIncomingActivity;->receiver:Landroid/content/BroadcastReceiver;

    const-string v2, "com.vkontakte.android.permission.ACCESS_DATA"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/vkontakte/android/CallIncomingActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 210
    invoke-virtual {p0}, Lcom/vkontakte/android/CallIncomingActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x280000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 211
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/CallIncomingActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    const/16 v2, 0xa

    const-string v3, "vk_voip_incoming"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/CallIncomingActivity;->wakelock:Landroid/os/PowerManager$WakeLock;

    .line 212
    iget-object v1, p0, Lcom/vkontakte/android/CallIncomingActivity;->wakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 214
    sget-boolean v1, Lcom/vkontakte/android/Global;->isTablet:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/CallIncomingActivity;->setRequestedOrientation(I)V

    .line 215
    :cond_0
    return-void

    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_1
    move v1, v3

    .line 113
    goto/16 :goto_0

    :cond_2
    move v3, v2

    .line 114
    goto/16 :goto_1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 269
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/CallIncomingActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/CallIncomingActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    :goto_0
    invoke-direct {p0}, Lcom/vkontakte/android/CallIncomingActivity;->stopRingtone()V

    .line 272
    invoke-super {p0}, Lcom/vkontakte/android/CustomTitleActivity;->onDestroy()V

    .line 273
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/CallIncomingActivity;->runPing:Z

    .line 274
    iget-object v0, p0, Lcom/vkontakte/android/CallIncomingActivity;->wakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 275
    return-void

    .line 270
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 263
    invoke-super {p0}, Lcom/vkontakte/android/CustomTitleActivity;->onPause()V

    .line 264
    invoke-virtual {p0}, Lcom/vkontakte/android/CallIncomingActivity;->finish()V

    .line 265
    return-void
.end method
