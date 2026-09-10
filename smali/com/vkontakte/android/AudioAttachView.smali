.class public Lcom/vkontakte/android/AudioAttachView;
.super Landroid/widget/RelativeLayout;
.source "AudioAttachView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final ACTION_UPDATE_AUDIO_ATTACH_VIEWS:Ljava/lang/String; = "com.vkontakte.android.UPDATE_AUDIO_ATTACH_VIEWS"

.field public static final AUDIO_ATTACH_VIEW_ID:I = 0xa


# instance fields
.field artist:Ljava/lang/String;

.field duration:I

.field eToReturn:Lcom/vkontakte/android/NewsEntry;

.field id:I

.field intentToReturn:Landroid/content/Intent;

.field isPlaying:Z

.field isPressed:Z

.field oid:I

.field public playlist:[Lcom/vkontakte/android/AudioFile;

.field public playlistPos:I

.field private receiver:Landroid/content/BroadcastReceiver;

.field title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 21
    iput-boolean v1, p0, Lcom/vkontakte/android/AudioAttachView;->isPlaying:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/AudioAttachView;->isPressed:Z

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/AudioAttachView;->playlist:[Lcom/vkontakte/android/AudioFile;

    .line 23
    iput v1, p0, Lcom/vkontakte/android/AudioAttachView;->playlistPos:I

    .line 27
    new-instance v0, Lcom/vkontakte/android/AudioAttachView$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/AudioAttachView$1;-><init>(Lcom/vkontakte/android/AudioAttachView;)V

    iput-object v0, p0, Lcom/vkontakte/android/AudioAttachView;->receiver:Landroid/content/BroadcastReceiver;

    .line 42
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AudioAttachView;->setId(I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    iput-boolean v1, p0, Lcom/vkontakte/android/AudioAttachView;->isPlaying:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/AudioAttachView;->isPressed:Z

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/AudioAttachView;->playlist:[Lcom/vkontakte/android/AudioFile;

    .line 23
    iput v1, p0, Lcom/vkontakte/android/AudioAttachView;->playlistPos:I

    .line 27
    new-instance v0, Lcom/vkontakte/android/AudioAttachView$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/AudioAttachView$1;-><init>(Lcom/vkontakte/android/AudioAttachView;)V

    iput-object v0, p0, Lcom/vkontakte/android/AudioAttachView;->receiver:Landroid/content/BroadcastReceiver;

    .line 47
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AudioAttachView;->setId(I)V

    .line 48
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/AudioAttachView;I)V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lcom/vkontakte/android/AudioAttachView;->replaceIcon(I)V

    return-void
.end method

.method private postAdd()V
    .locals 0

    .prologue
    .line 151
    return-void
.end method

.method private replaceIcon(I)V
    .locals 1
    .param p1, "resID"    # I

    .prologue
    .line 154
    const v0, 0x7f060003

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AudioAttachView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 155
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 7

    .prologue
    const v4, 0x7f02013f

    const v3, 0x7f020136

    .line 158
    invoke-super {p0}, Landroid/widget/RelativeLayout;->drawableStateChanged()V

    .line 159
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioAttachView;->getDrawableState()[I

    move-result-object v1

    .line 160
    .local v1, "s":[I
    const-string v2, ""

    .line 161
    .local v2, "t":Ljava/lang/String;
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/vkontakte/android/AudioAttachView;->isPressed:Z

    .line 162
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, v1

    if-lt v0, v5, :cond_0

    .line 163
    iget-boolean v5, p0, Lcom/vkontakte/android/AudioAttachView;->isPressed:Z

    if-eqz v5, :cond_4

    .line 164
    iget-boolean v5, p0, Lcom/vkontakte/android/AudioAttachView;->isPlaying:Z

    if-eqz v5, :cond_3

    :goto_1
    invoke-direct {p0, v3}, Lcom/vkontakte/android/AudioAttachView;->replaceIcon(I)V

    .line 168
    :goto_2
    return-void

    .line 162
    :cond_0
    aget v5, v1, v0

    const v6, 0x10100a7

    if-eq v5, v6, :cond_1

    aget v5, v1, v0

    const v6, 0x10100a1

    if-ne v5, v6, :cond_2

    :cond_1
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/vkontakte/android/AudioAttachView;->isPressed:Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v3, v4

    .line 164
    goto :goto_1

    .line 166
    :cond_4
    iget-boolean v5, p0, Lcom/vkontakte/android/AudioAttachView;->isPlaying:Z

    if-eqz v5, :cond_5

    :goto_3
    invoke-direct {p0, v3}, Lcom/vkontakte/android/AudioAttachView;->replaceIcon(I)V

    goto :goto_2

    :cond_5
    move v3, v4

    goto :goto_3
.end method

.method public onAttachedToWindow()V
    .locals 3

    .prologue
    .line 51
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 53
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 54
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.vkontakte.android.UPDATE_AUDIO_ATTACH_VIEWS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioAttachView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/AudioAttachView;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 56
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 119
    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    if-eqz v1, :cond_1

    .line 120
    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v1}, Lcom/vkontakte/android/AudioPlayerService;->getOid()I

    move-result v1

    iget v2, p0, Lcom/vkontakte/android/AudioAttachView;->oid:I

    if-ne v1, v2, :cond_1

    .line 121
    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v1}, Lcom/vkontakte/android/AudioPlayerService;->getAid()I

    move-result v1

    iget v2, p0, Lcom/vkontakte/android/AudioAttachView;->id:I

    if-ne v1, v2, :cond_1

    .line 122
    new-instance v7, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/AudioAttachView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/vkontakte/android/AudioPlayerService;

    invoke-direct {v7, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 123
    .local v7, "intent":Landroid/content/Intent;
    const-string v1, "action"

    const/4 v2, 0x3

    invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 124
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioAttachView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 144
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v1}, Lcom/vkontakte/android/AudioPlayerService;->getOid()I

    move-result v1

    iget v2, p0, Lcom/vkontakte/android/AudioAttachView;->oid:I

    if-ne v1, v2, :cond_2

    .line 128
    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v1}, Lcom/vkontakte/android/AudioPlayerService;->getAid()I

    move-result v1

    iget v2, p0, Lcom/vkontakte/android/AudioAttachView;->id:I

    if-ne v1, v2, :cond_2

    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    iget-boolean v1, v1, Lcom/vkontakte/android/AudioPlayerService;->initing:Z

    if-nez v1, :cond_0

    .line 129
    :cond_2
    iget-object v1, p0, Lcom/vkontakte/android/AudioAttachView;->playlist:[Lcom/vkontakte/android/AudioFile;

    if-nez v1, :cond_3

    .line 130
    new-instance v7, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/AudioAttachView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/vkontakte/android/AudioPlayerService;

    invoke-direct {v7, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 131
    .restart local v7    # "intent":Landroid/content/Intent;
    const-string v1, "action"

    const/4 v2, 0x1

    invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 132
    new-instance v0, Lcom/vkontakte/android/AudioFile;

    iget v1, p0, Lcom/vkontakte/android/AudioAttachView;->id:I

    iget v2, p0, Lcom/vkontakte/android/AudioAttachView;->oid:I

    iget-object v3, p0, Lcom/vkontakte/android/AudioAttachView;->artist:Ljava/lang/String;

    iget-object v4, p0, Lcom/vkontakte/android/AudioAttachView;->title:Ljava/lang/String;

    iget v5, p0, Lcom/vkontakte/android/AudioAttachView;->duration:I

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/vkontakte/android/AudioFile;-><init>(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 133
    .local v0, "af":Lcom/vkontakte/android/AudioFile;
    const-string v1, "file"

    invoke-virtual {v7, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 134
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioAttachView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 136
    .end local v0    # "af":Lcom/vkontakte/android/AudioFile;
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_3
    new-instance v7, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/AudioAttachView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/vkontakte/android/AudioPlayerService;

    invoke-direct {v7, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 137
    .restart local v7    # "intent":Landroid/content/Intent;
    const-string v1, "action"

    const/4 v2, 0x2

    invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 138
    const-string v1, "list"

    iget-object v2, p0, Lcom/vkontakte/android/AudioAttachView;->playlist:[Lcom/vkontakte/android/AudioFile;

    invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 139
    const-string v1, "position"

    iget v2, p0, Lcom/vkontakte/android/AudioAttachView;->playlistPos:I

    invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 140
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioAttachView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 59
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 61
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioAttachView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/AudioAttachView;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 62
    return-void
.end method

.method public onMeasure(II)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 65
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 67
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/vkontakte/android/AudioAttachView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/AudioAttachView;->setMeasuredDimension(II)V

    .line 68
    return-void
.end method

.method public setData(Ljava/lang/String;Ljava/lang/String;III)V
    .locals 7
    .param p1, "artist"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "_oid"    # I
    .param p4, "_aid"    # I
    .param p5, "duration"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 72
    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v0

    .line 73
    .local v0, "editable":Landroid/text/Editable;
    new-instance v1, Lcom/vkontakte/android/AudioAttachView$2;

    invoke-direct {v1, p0, v6}, Lcom/vkontakte/android/AudioAttachView$2;-><init>(Lcom/vkontakte/android/AudioAttachView;I)V

    .line 81
    .local v1, "ss":Landroid/text/style/StyleSpan;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-interface {v0, v1, v5, v2, v5}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 82
    const v2, 0x7f060004

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/AudioAttachView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    invoke-virtual {p0, p0}, Lcom/vkontakte/android/AudioAttachView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iput p3, p0, Lcom/vkontakte/android/AudioAttachView;->oid:I

    .line 87
    iput p4, p0, Lcom/vkontakte/android/AudioAttachView;->id:I

    .line 88
    iput-object p1, p0, Lcom/vkontakte/android/AudioAttachView;->artist:Ljava/lang/String;

    .line 89
    iput-object p2, p0, Lcom/vkontakte/android/AudioAttachView;->title:Ljava/lang/String;

    .line 90
    iput p5, p0, Lcom/vkontakte/android/AudioAttachView;->duration:I

    .line 91
    sget-object v2, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    if-eqz v2, :cond_0

    .line 92
    sget-object v2, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v2}, Lcom/vkontakte/android/AudioPlayerService;->getOid()I

    move-result v2

    iget v3, p0, Lcom/vkontakte/android/AudioAttachView;->oid:I

    if-ne v2, v3, :cond_0

    .line 93
    sget-object v2, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v2}, Lcom/vkontakte/android/AudioPlayerService;->getAid()I

    move-result v2

    iget v3, p0, Lcom/vkontakte/android/AudioAttachView;->id:I

    if-ne v2, v3, :cond_0

    .line 94
    sget-object v2, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v2}, Lcom/vkontakte/android/AudioPlayerService;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    iput-boolean v6, p0, Lcom/vkontakte/android/AudioAttachView;->isPlaying:Z

    .line 96
    const v2, 0x7f020136

    invoke-direct {p0, v2}, Lcom/vkontakte/android/AudioAttachView;->replaceIcon(I)V

    .line 99
    :cond_0
    return-void
.end method

.method public setPlaying(Z)V
    .locals 1
    .param p1, "p"    # Z

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioAttachView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 180
    :goto_0
    return-void

    .line 172
    :cond_0
    new-instance v0, Lcom/vkontakte/android/AudioAttachView$3;

    invoke-direct {v0, p0, p1}, Lcom/vkontakte/android/AudioAttachView$3;-><init>(Lcom/vkontakte/android/AudioAttachView;Z)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AudioAttachView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
